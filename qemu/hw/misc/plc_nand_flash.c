#include "qemu/osdep.h"
#include "qapi/error.h" /* provides error_fatal() handler */
#include "hw/sysbus.h" /* provides all sysbus registering func */

#include "exec/memory.h"
#include "hw/loader.h"

#include "hw/boards.h"
#include "qemu/log.h"
#include "qemu/error-report.h"
#include "hw/misc/plc_agent.h"
#include "hw/core/cpu.h"
#define TYPE_PLC_NAND_FLASH "xlnx.plc_NAND_FLASH"
typedef struct PLCNAND_FLASHState PLCNAND_FLASHState;
DECLARE_INSTANCE_CHECKER(PLCNAND_FLASHState, PLC_NAND_FLASH, TYPE_PLC_NAND_FLASH)
DeviceState *plc_NAND_FLASH_create(hwaddr addr);
int load_nand_content_file(void);
uint32_t swap_endian(uint32_t value);
#define REG_ID    0x0
#define CHIP_ID    0xBA000001

#define FLASH_CONTENT_FILENAME "/Users/lihaoran/siemensSec/s7-1200/bin/nandflash.bin" 
#define TYPE_DATA 0
#define TYPE_INFO 1
uint32_t in_firmware=0;

uint32_t* data_ptr;
uint32_t* data_buffer;
uint16_t* info_ptr;
int read_type;
uint32_t page_num=0;
uint32_t in_page_offset=0;


uint32_t* write_data_ptr;
uint32_t write_page_num=0;
uint32_t write_in_page_offset=0;

struct PLCNAND_FLASHState {
    SysBusDevice parent_obj;
    MemoryRegion iomem;
    uint64_t chip_id;
};
uint16_t info[] = {0x2cff, 0xa1ff, 0x80ff, 0x15ff, 0x82ff};

uint32_t swap_endian(uint32_t value) {
    return ((value & 0x000000FF) << 24) | 
           ((value & 0x0000FF00) << 8)  | 
           ((value & 0x00FF0000) >> 8)  | 
           ((value & 0xFF000000) >> 24);
}

static uint64_t plc_NAND_FLASH_read(void *opaque, hwaddr addr, unsigned int size) {
    int read_addr = 0x80000000+(int)addr;
    uint32_t res=0xdeadbeef;
    if(in_firmware == 0){ // in bootloader, read firmware
        switch (read_addr) {
            case 0x80080000:
                if(read_type == TYPE_INFO){
                    res = *info_ptr++;
                }else{ // read_type == TYPE_DATA
                    res = swap_endian(*data_ptr++);
                }
                // qemu_log_mask(LOG_GUEST_ERROR, "%s: addr=0x%x size=0x%x value=0x%x\n",
                //       __func__, read_addr, size, (int)res);
                break;
            case 0x80280000:
                res = 0xe0;
                break;

            default:
                qemu_log_mask(LOG_GUEST_ERROR, "%s: addr=0x%x size=0x%x value=0x%x\n",
                      __func__, read_addr, size, (int)res);
                return res;
        }
    }else{ // read from real device
        // uint32_t agent_buffer[4];
        // uint32_t option = 0;
        // uint32_t value = 0;
        // agent_buffer[0] = plc_swap_endian(option^0xcafebabe);
        // agent_buffer[1] = plc_swap_endian(read_addr^0xcafebabe);
        // agent_buffer[2] = plc_swap_endian(size^0xcafebabe);
        // agent_buffer[3] = plc_swap_endian(value^0xcafebabe);
        // res = send_to_agent((unsigned char*)agent_buffer);
        // res = plc_swap_endian(res)^0xcafebabe;
        res = tcp_send_to_agent(CMD_READ, read_addr, size, CMD_NOP);
        // CPUState *cpu = qemu_get_cpu(4);
        // if (cpu != NULL) {
        //     cpu->ask_irq = 0;
        // }
        qemu_log_mask(LOG_GUEST_ERROR, "%s: addr=0x%x size=0x%x value=0x%x in_firmware=%d\n",
                      __func__, read_addr, size, (int)res, in_firmware);
    }
    
    
    return res;
}

static void plc_NAND_FLASH_write(void *opaque, hwaddr addr, uint64_t val64, unsigned int size) {
    uint32_t value = val64;
    int write_addr = 0x80000000+(int)addr;

    if(write_addr == 0x83fffffc){
        in_firmware = 1;
        qemu_log_mask(LOG_GUEST_ERROR, "nand flash change to real device!\n");
        return;
    }

    if(write_addr == 0x83fffff0){
        in_firmware = 0;
        CPUState *cpu = qemu_get_cpu(4);
        cpu->int1_freq=1;
        qemu_log_mask(LOG_GUEST_ERROR, "nand flash change to emulator! int1_freq set to 1\n");
        return;
    }

    if(in_firmware == 0){ // in bootloader

        switch(write_addr){
            // read functions
            case 0x80200480:
            case 0x800007f8:
                read_type = TYPE_INFO;
                info_ptr = info;
                break;
            case 0x80000380:
            case 0x80000000:
                read_type = TYPE_DATA;
                break;
            case 0x80918000:
                page_num = 0;
                page_num = (page_num & 0xFF00FFFF) | value<<16;
                break;
            case 0x80918001:
                page_num = (page_num & 0x00FFFFFF) | value<<24;
                break;
            case 0x80918002:
                page_num = (page_num & 0xFFFFFF00) | value;
                break;
            case 0x80918003:
                page_num = (page_num & 0xFFFF00FF) | value<<8;
                data_ptr = data_buffer + page_num*0x880/4;
                // qemu_log_mask(LOG_GUEST_ERROR, "%s: the read offset is set to 0x%x\n",
                //       __func__, page_num*0x880);
                qemu_log_mask(LOG_GUEST_ERROR, "%s: set read page to 0x%x\n",
                      __func__, page_num);
                break;
            case 0x80770028:
                in_page_offset = 0;
                in_page_offset = (in_page_offset & 0xFFFFFF00) | value;
                break;
            case 0x80770029:
                in_page_offset = (in_page_offset & 0xFFFF00FF) | value<<8;
                break;
            case 0x8077002a:
                data_ptr = data_buffer + page_num*0x880/4;
                data_ptr = data_ptr + in_page_offset/4;
                // qemu_log_mask(LOG_GUEST_ERROR, "%s: the in-page read offset is set to 0x%x\n",
                //       __func__, in_page_offset);
                break;

            // // write functions
            // case 0x80a08400:
            //     write_page_num = 0;
            //     write_page_num = (write_page_num & 0xFF00FFFF) | value<<16;
            //     break;
            // case 0x80a08401:
            //     write_page_num = (write_page_num & 0x00FFFFFF) | value<<24;
            //     break;
            // case 0x80a08402:
            //     write_page_num = (write_page_num & 0xFFFFFF00) | value;
            //     break;
            // case 0x80a08403:
            //     write_page_num = (write_page_num & 0xFFFF00FF) | value<<8;
            //     write_data_ptr = data_buffer + write_page_num*0x880/4;
            //     qemu_log_mask(LOG_GUEST_ERROR, "%s: set write page to 0x%x\n",
            //           __func__, write_page_num);
            //     break;

            // case 0x80600428:
            //     write_in_page_offset = 0;
            //     write_in_page_offset = (write_in_page_offset & 0xFFFFFF00) | value;
            //     break;
            // case 0x80600429:
            //     write_in_page_offset = (write_in_page_offset & 0xFFFF00FF) | value<<8;
            //     break;
            // case 0x8060042a:
            //     write_data_ptr = data_buffer + write_page_num*0x880/4;
            //     write_data_ptr = write_data_ptr + write_in_page_offset/4;
            //     qemu_log_mask(LOG_GUEST_ERROR, "%s: the in-page write offset is set to 0x%x\n",
            //           __func__, write_in_page_offset);
            //     break;
            // case 0x80088000:
            //     *write_data_ptr++ = swap_endian(value);
            //     qemu_log_mask(LOG_GUEST_ERROR, "%s: write value 0x%x\n", __func__, value);
            //     break;
            default:
                qemu_log_mask(LOG_GUEST_ERROR, "%s: addr=0x%x size=0x%x value=0x%x\n",
                      __func__, write_addr, size, value);

        }

    }else{ // forward flash write to real device

        // uint32_t agent_buffer[4];

        // uint32_t option = 1;
        // agent_buffer[0] = plc_swap_endian(option^0xcafebabe);
        // agent_buffer[1] = plc_swap_endian(write_addr^0xcafebabe);
        // agent_buffer[2] = plc_swap_endian(size^0xcafebabe);
        // agent_buffer[3] = plc_swap_endian(value^0xcafebabe);

        // uint32_t res = send_to_agent((unsigned char*)agent_buffer);
        // res = plc_swap_endian(res);

        uint32_t res = tcp_send_to_agent(CMD_WRITE, write_addr, size, value);
        
        if (res != 0x77746f6b){
            qemu_log_mask(LOG_GUEST_ERROR,"%s: write error!", __func__);
        }else{
            qemu_log_mask(LOG_GUEST_ERROR, "%s: addr=0x%x size=0x%x value=0x%x in_firmware=%d\n",
                  __func__, write_addr, size, value, in_firmware);
        }
    }
    
    
}

static const MemoryRegionOps plc_NAND_FLASH_ops = {
        .read = plc_NAND_FLASH_read,
        .write = plc_NAND_FLASH_write,
        .endianness = DEVICE_NATIVE_ENDIAN,
};


int load_nand_content_file(void){
    FILE *file = fopen(FLASH_CONTENT_FILENAME, "rb");
    if (file == NULL) {
        qemu_log_mask(LOG_GUEST_ERROR, "flash file open error\n");
        return -1;
    }

    // 获取文件大小
    fseek(file, 0, SEEK_END);
    long fileSize = ftell(file);
    fseek(file, 0, SEEK_SET);

    // 分配内存以存储文件内容
    data_buffer = (uint32_t*)malloc(fileSize);
    if (data_buffer == NULL) {
        qemu_log_mask(LOG_GUEST_ERROR, "mem alloc fail\n");
        fclose(file);
        return -2;
    }

    size_t readCount = fread(data_buffer, 1, fileSize, file);
    if (readCount != fileSize) {
        qemu_log_mask(LOG_GUEST_ERROR, "read count not equal to file size\n");
        fclose(file);
        return -3;
    }
    data_ptr = data_buffer;
    fclose(file);
    return 0;
}

static void plc_NAND_FLASH_instance_init(Object *obj) {
    PLCNAND_FLASHState * s = PLC_NAND_FLASH(obj);

    /* allocate memory map region */
    memory_region_init_io(&s->iomem, obj, &plc_NAND_FLASH_ops, s, TYPE_PLC_NAND_FLASH, 0x4000000);
    sysbus_init_mmio(SYS_BUS_DEVICE(obj), &s->iomem);

    s->chip_id = CHIP_ID;
    load_nand_content_file();
}

/* create a new type to define the info related to our device */
static const TypeInfo plc_NAND_FLASH_info = {
        .name = TYPE_PLC_NAND_FLASH,
        .parent = TYPE_SYS_BUS_DEVICE,
        .instance_size = sizeof(PLCNAND_FLASHState),
        .instance_init = plc_NAND_FLASH_instance_init,
};

static void plc_NAND_FLASH_register_types(void) {
    type_register_static(&plc_NAND_FLASH_info);
}

type_init(plc_NAND_FLASH_register_types)

/*
 * Create the PLC NAND_FLASH device.
 */
DeviceState *plc_NAND_FLASH_create(hwaddr addr) {
    DeviceState *dev = qdev_new(TYPE_PLC_NAND_FLASH);
    sysbus_realize_and_unref(SYS_BUS_DEVICE(dev), &error_fatal);
    sysbus_mmio_map(SYS_BUS_DEVICE(dev), 0, addr);
    return dev;
} 
