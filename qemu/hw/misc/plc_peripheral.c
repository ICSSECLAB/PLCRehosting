#include "qemu/osdep.h"
#include "qapi/error.h" /* provides error_fatal() handler */
#include "hw/sysbus.h" /* provides all sysbus registering func */
#include "string.h"
#include "qemu/log.h"
#include "qemu/timer.h"
#include "hw/core/cpu.h"
#include "hw/misc/plc_agent.h"
#include <time.h>
#define TYPE_PLC_peripheral "xlnx.plc_peripheral"
typedef struct PLCperipheralState PLCperipheralState;
DECLARE_INSTANCE_CHECKER(PLCperipheralState, PLC_peripheral, TYPE_PLC_peripheral)

#define REG_ID 	0x0
#define CHIP_ID	0xBA000001
#define SCALE_TIMER_10 0x200
#define SCALE_WATCHDOG 50
#define SCALE_CNTDOWN 0x10000
#define SCALE_CNTUP 0x10000
#define TICKS_PER_MS 1000

int watchdog_read(void);
uint32_t count_down_timer(void);
uint32_t count_up_timer(void);

uint32_t write_MAP3_IOC(uint32_t offset, uint32_t size, uint32_t value);
uint32_t read_MAP3_IOC(uint32_t offset, uint32_t size);

uint32_t write_MAP3_FL_MEMCTL(uint32_t offset, uint32_t size, uint32_t value);

uint32_t write_MAP3_EMB0(uint32_t offset, uint32_t size, uint32_t value);
uint32_t read_MAP3_EMB0(uint32_t offset, uint32_t size);

uint32_t write_MAP3_EMB1(uint32_t offset, uint32_t size, uint32_t value);
uint32_t read_MAP3_EMB1(uint32_t offset, uint32_t size);

uint32_t write_MAP3_DDR_MEMCTL(uint32_t offset, uint32_t size, uint32_t value);
uint32_t read_MAP3_DDR_MEMCTL(uint32_t offset, uint32_t size);

uint32_t write_MAP3_MMC(uint32_t offset, uint32_t size, uint32_t value);
uint32_t read_MAP3_MMC(uint32_t offset, uint32_t size);

uint32_t write_MAP3_LCD(uint32_t offset, uint32_t size, uint32_t value);
uint32_t read_MAP3_LCD(uint32_t offset, uint32_t size);

uint32_t write_MAP3_BOOL_HELPER(uint32_t offset, uint32_t size, uint32_t value);
uint32_t read_MAP3_BOOL_HELPER(uint32_t offset, uint32_t size);

uint32_t write_MAP3_ADC(uint32_t offset, uint32_t size, uint32_t value);
uint32_t read_MAP3_ADC(uint32_t offset, uint32_t size);

uint32_t write_MAP3_UART1(uint32_t offset, uint32_t size, uint32_t value);
uint32_t read_MAP3_UART1(uint32_t offset, uint32_t size);

uint32_t read_MAP3_INPUTS(uint32_t offset, uint32_t size);
uint32_t write_MAP3_INPUTS(uint32_t offset, uint32_t size, uint32_t value);

uint32_t read_MAP3_OUTPUTS(uint32_t offset, uint32_t size);
uint32_t write_MAP3_OUTPUTS(uint32_t offset, uint32_t size, uint32_t value);

uint32_t read_MAP3_VIC(uint32_t offset, uint32_t size);
uint32_t write_MAP3_VIC(uint32_t offset, uint32_t size, uint32_t value);

uint32_t read_MAP3_ITIMER10(uint32_t offset, uint32_t size);
uint32_t write_MAP3_ITIMER10(uint32_t offset, uint32_t size, uint32_t value);

int ignore = 1;
uint32_t watchdog_slow = 0;
uint32_t watchdog_value = 0;

// define MMIO table structure
struct MmioEntry {
    char name[32];
    unsigned int start_addr;
    unsigned int size;
};

struct MmioEntry mmio_table[] = {
    {"MAP3_PWRSTK", 0xFFFB0000, 0x3c},
    {"MAP3_SPI0", 0xFFFB1000, 0x18},
    {"MAP3_SPI1", 0xFFFB2000, 0x18},
    {"MAP3_I2C0", 0xFFFB3000, 0x6C}, // 
    {"MAP3_I2C1", 0xFFFB4000, 0x6C}, // 
    {"MAP3_I2C2", 0xFFFB5000, 0x6C}, //
    {"MAP3_ADC", 0xFFFB6000, 0x24},
    {"MAP3_UART0", 0xFFFB7000, 0x9C},
    {"MAP3_UART1", 0xFFFB8000, 0x9C},
    {"MAP3_HSC0", 0xFFFB9100, 0x80},
    {"MAP3_HSC1", 0xFFFB9180, 0x80},
    {"MAP3_HSC2", 0xFFFB9200, 0x80},
    {"MAP3_HSC3", 0xFFFB9280, 0x80},
    {"MAP3_HSC4", 0xFFFB9300, 0x80},
    {"MAP3_HSC5", 0xFFFB9380, 0x80},
    {"MAP3_INPUTS", 0xFFFB9000, 0x400},
    {"MAP3_PLS0", 0xFFFBA000, 0x80},
    {"MAP3_PLS1", 0xFFFBA080, 0x80},
    {"MAP3_PLS2", 0xFFFBA100, 0x80},
    {"MAP3_PLS3", 0xFFFBA180, 0x80},
    {"MAP3_OUTPUTS", 0xFFFBA000, 0x218},
    {"MAP3_ITIMER0", 0xFFFBB000, 0x10},//
    {"MAP3_ITIMER1", 0xFFFBB010, 0x10},
    {"MAP3_ITIMER2", 0xFFFBB020, 0x10},
    {"MAP3_ITIMER3", 0xFFFBB030, 0x10},
    {"MAP3_ITIMER4", 0xFFFBB040, 0x10},
    {"MAP3_ITIMER5", 0xFFFBB050, 0x10},
    {"MAP3_ITIMER6", 0xFFFBB060, 0x10},
    {"MAP3_ITIMER7", 0xFFFBB070, 0x10},
    {"MAP3_ITIMER8", 0xFFFBB080, 0x10},
    {"MAP3_ITIMER9", 0xFFFBB090, 0x10},
    {"MAP3_ITIMER10", 0xFFFBB0a0, 0x10},
    {"MAP3_ITIMER11", 0xFFFBB0b0, 0x10},
    {"MAP3_ITIMER12", 0xFFFBB0c0, 0x10},
    {"MAP3_ITIMER13", 0xFFFBB0d0, 0x10},
    {"MAP3_TIMERS", 0xFFFBB000, 0x15C},//
    {"MAP3_IOC", 0xFFFBC000, 0x2C},
    {"MAP3_FL_MEMCTL", 0xFFFBD000, 0x1000},
    {"MAP3_VIC", 0xFFFFFC00, 0x200}, // 
    {"MAP3_EMB0", 0xFFF50000, 0x48},
    {"MAP3_EMB1", 0xFFF51000, 0x48},
    {"MAP3_DDR_MEMCTL", 0xFFF52000, 0x8C},
    {"MAP3_MMC", 0xFFF60000, 0x104},
    {"MAP3_LCD", 0xFFF70000, 0xFF8},
    {"MAP3_MAC", 0xFFF90000, 0xA4}, // 
    {"MAP3_BOOL_HELPER", 0xFFFA0000, 0x4000},
};

// get mmio table length
#define MMIO_TABLE_SIZE (sizeof(mmio_table) / sizeof(mmio_table[0]))
const char* find_mmio_region(uint32_t address);

// find peripherla name based on address
const char* find_mmio_region(uint32_t address) {
    for (int i = 0; i < MMIO_TABLE_SIZE; i++) {
        if (address >= mmio_table[i].start_addr && address < mmio_table[i].start_addr + mmio_table[i].size) {
            return mmio_table[i].name;
        }
    }
    return "Unknown";
}

DeviceState *plc_peripheral_create(hwaddr addr);

struct PLCperipheralState {
	SysBusDevice parent_obj;
	MemoryRegion iomem;
    qemu_irq irq;
	uint64_t chip_id;
};


int watchdog_read(void){
    int curr_time_ms = qemu_clock_get_ms(QEMU_CLOCK_VIRTUAL);
    return curr_time_ms * TICKS_PER_MS;
}
uint32_t timer_down_value = 0xffffffff;

uint32_t count_down_timer(void){
    static uint64_t last_time_ms = 0; // 上一次调用函数的时间
    uint64_t curr_time_ms = qemu_clock_get_ms(QEMU_CLOCK_VIRTUAL); // 获取当前时间

    if (last_time_ms == 0) {
        last_time_ms = curr_time_ms; // 初始化上一次调用时间
        return timer_down_value;
    }

    // 计算时间差
    uint64_t delta_ms = curr_time_ms - last_time_ms;
    last_time_ms = curr_time_ms; // 更新上一次调用时间
    delta_ms *= SCALE_CNTDOWN;

    // 更新定时器的值，注意处理可能的溢出
    if (delta_ms > timer_down_value) {
        timer_down_value = (0xffffffff + delta_ms - timer_down_value) % 0xffffffff; // 如果时间差大于当前计时器的值，则重置计时器
    } else {
        timer_down_value -= delta_ms; // 否则，减去时间差
    }

    return timer_down_value;
}


uint32_t timer_up_value = 0;

uint32_t count_up_timer(void){
    static uint64_t last_time_ms = 0; // 上一次调用函数的时间
    uint64_t curr_time_ms = qemu_clock_get_ms(QEMU_CLOCK_VIRTUAL); // 获取当前时间

    if (last_time_ms == 0) {
        last_time_ms = curr_time_ms; // 初始化上一次调用时间
        return timer_up_value;
    }

    // 计算时间差
    uint64_t delta_ms = curr_time_ms - last_time_ms;
    last_time_ms = curr_time_ms; // 更新上一次调用时间
    delta_ms *= SCALE_CNTUP; // 应用缩放因子

    // 更新定时器的值，处理回绕
    timer_up_value += delta_ms; // 增加时间差
    if (timer_up_value > 0xffffffff) { // 检查是否超过了上限并需要回绕
        timer_up_value %= 0xffffffff; // 使用取模运算来处理回绕
    }

    return timer_up_value;
}

int timer10_original_value=0;
int timer12_original_value=0;
// uint32_t VIC_value = 0;


uint32_t MAP3_IOC_0x0 = 0x880a0b00;
uint32_t MAP3_IOC_0x4 = 0;
uint32_t MAP3_IOC_0xc = 0;
uint32_t MAP3_IOC_0x20 = 0;

uint32_t read_MAP3_IOC(uint32_t offset, uint32_t size){
    uint32_t res = 0;
    switch(offset){
    case 0x0:
        res = MAP3_IOC_0x0;
        break;
    case 0x4:
        res = MAP3_IOC_0x4;
        break;
    case 0xc:
        res = MAP3_IOC_0xc & 0xff;
        break;
    case 0x10:
        res = 0x100;
        break;
    default:
        qemu_log_mask(LOG_GUEST_ERROR,"%s: Error offset=0x%x\n", __func__, offset);
    }

    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, res);
    return res;
}
uint32_t write_MAP3_IOC(uint32_t offset, uint32_t size, uint32_t value){
    switch(offset){
    case 0x0:
        MAP3_IOC_0x0 = value;
        break;
    case 0x4:
        MAP3_IOC_0x4 = value;
        break;
    case 0xc:
        MAP3_IOC_0xc = value;
        break;
    case 0x20:
        MAP3_IOC_0x20 = value;
        MAP3_IOC_0x0 ^= (1<<9);
        break;
    default:
        qemu_log_mask(LOG_GUEST_ERROR,"%s: Error offset=0x%x\n", __func__, offset);
    }

    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, value);
    return 0;
}

uint32_t write_MAP3_FL_MEMCTL(uint32_t offset, uint32_t size, uint32_t value){
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, value);
    return 0;
}

uint32_t MAP3_EMB0_0x14 = 0;
uint32_t write_MAP3_EMB0(uint32_t offset, uint32_t size, uint32_t value){
    switch(offset){
    case 0x14:
        MAP3_EMB0_0x14 = 0x8;
        break;
    case 0xc:
        MAP3_EMB0_0x14 = 0xa;
        break;
    }
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, value);
    return 0;
}
uint32_t read_MAP3_EMB0(uint32_t offset, uint32_t size){
    uint32_t res = 0;
    switch(offset){
    case 0x14:
        res = MAP3_EMB0_0x14;
        break;
    case 0x18:
        res = 0;
        break;
    default:
        qemu_log_mask(LOG_GUEST_ERROR,"%s: Error offset=0x%x\n", __func__, offset);
    }
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, res);
    return res;
}

uint32_t MAP3_EMB1_0x14 = 0;
uint32_t write_MAP3_EMB1(uint32_t offset, uint32_t size, uint32_t value){
    switch(offset){
    case 0x14:
        MAP3_EMB1_0x14 = 0x8;
        break;
    case 0xc:
        MAP3_EMB1_0x14 = 0xa;
        break;
    }
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, value);
    return 0;
}
uint32_t read_MAP3_EMB1(uint32_t offset, uint32_t size){
    uint32_t res = 0;
    switch(offset){
    case 0x14:
        res = MAP3_EMB1_0x14;
        break;
    case 0x18:
        res = 0;
        break;
    default:
        qemu_log_mask(LOG_GUEST_ERROR,"%s: Error offset=0x%x\n", __func__, offset);
    }
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, res);
    return res;
}

uint32_t write_MAP3_DDR_MEMCTL(uint32_t offset, uint32_t size, uint32_t value){
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, value);
    return 0;
}
uint32_t read_MAP3_DDR_MEMCTL(uint32_t offset, uint32_t size){
    uint32_t res = 0;
    switch(offset){
    case 0xc:
        res = 0x88300000;
        break;
    default:
        qemu_log_mask(LOG_GUEST_ERROR,"%s: Error offset=0x%x\n", __func__, offset);
    }
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, res);
    return res;
}

uint32_t write_MAP3_MMC(uint32_t offset, uint32_t size, uint32_t value){
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, value);
    return 0;
}
uint32_t read_MAP3_MMC(uint32_t offset, uint32_t size){
    uint32_t res = 0;
    switch(offset){
    case 0x70:
        res = 0x1c44cc3;
        break;
    case 0x4c:
        res = 0x1ff0000;
        break;
    case 0x6c:
        res = 0x5342220a;
        break;
    case 0x0:
        res = 0;
        break;
    case 0x50:
        res = 1;
        break;
    default:
        qemu_log_mask(LOG_GUEST_ERROR,"%s: Error offset=0x%x\n", __func__, offset);
    }
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, res);
    return res;
}

uint32_t write_MAP3_LCD(uint32_t offset, uint32_t size, uint32_t value){
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, value);
    return 0;
}
uint32_t read_MAP3_LCD(uint32_t offset, uint32_t size){
    uint32_t res = 0;
    switch(offset){
    case 0x9f9:
    case 0xbf9:
        res = 0;
        break;
    default:
        qemu_log_mask(LOG_GUEST_ERROR,"%s: Error offset=0x%x\n", __func__, offset);
    }
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, res);
    return res;
}

uint32_t write_MAP3_BOOL_HELPER(uint32_t offset, uint32_t size, uint32_t value){
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, value);
    return 0;
}
uint32_t read_MAP3_BOOL_HELPER(uint32_t offset, uint32_t size){
    uint32_t res = 0;
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, res);
    return res;
}

uint32_t write_MAP3_ADC(uint32_t offset, uint32_t size, uint32_t value){
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, value);
    return 0;
}
uint32_t read_MAP3_ADC(uint32_t offset, uint32_t size){
    uint32_t res = 0x81400;
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, res);
    return res;
}

uint32_t MAP3_UART1_0x8 = 0;
uint32_t write_MAP3_UART1(uint32_t offset, uint32_t size, uint32_t value){
    if(offset == 0x8){
        MAP3_UART1_0x8 = value;
    }
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, value);
    return 0;
}
uint32_t read_MAP3_UART1(uint32_t offset, uint32_t size){
    uint32_t res = 0;
    switch(offset){
    case 0x8:
        res = MAP3_UART1_0x8;
        break;
    case 0x0:
        res = 1;
        break;
    case 0x18:
        res = 0x90;
        break;
    default:
        qemu_log_mask(LOG_GUEST_ERROR,"%s: Error offset=0x%x\n", __func__, offset);
    }
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, res);
    return res;
}

uint32_t read_MAP3_INPUTS(uint32_t offset, uint32_t size){
    uint32_t res = 0;
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, res);
    return res;
}
uint32_t write_MAP3_INPUTS(uint32_t offset, uint32_t size, uint32_t value){
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, value);
    return 0;
}

uint32_t read_MAP3_OUTPUTS(uint32_t offset, uint32_t size){
    uint32_t res = 0;
    if(offset == 0x208){
        res = 0x77777777;
    }
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, res);
    return res;
}
uint32_t write_MAP3_OUTPUTS(uint32_t offset, uint32_t size, uint32_t value){
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, value);
    return 0;
}


uint32_t MAP3_VIC_0xa0 = 0;
uint32_t MAP3_VIC_0x88 = 0;
uint32_t MAP3_VIC_0x84 = 0;
uint32_t write_MAP3_VIC(uint32_t offset, uint32_t size, uint32_t value){
    switch(offset){
    case 0xa0:
        MAP3_VIC_0xa0 = value;
        break;
    case 0x88:
        MAP3_VIC_0x88 = value;
        break;
    case 0x84:
        MAP3_VIC_0x84 = value;
        break;
    default:
        qemu_log_mask(LOG_GUEST_ERROR,"%s: Error offset=0x%x\n", __func__, offset);
    }
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, value);
    return 0;
}
uint32_t read_MAP3_VIC(uint32_t offset, uint32_t size){
    uint32_t res = 0;
    CPUState *cpu = qemu_get_cpu(4);
    switch(offset){
    case 0x0:
        res = cpu->ISR_addr;
        break;
    case 0xa0:
        res = MAP3_VIC_0xa0;
        break;
    case 0x88:
        res = 0;
        break;
    case 0x84:
        res = MAP3_VIC_0x84;
        break;
    default:
        qemu_log_mask(LOG_GUEST_ERROR,"%s: Error offset=0x%x\n", __func__, offset);
    }
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, res);
    return res;
}

int start_time_ms = 0;
int timer_tick_count = 50;
int stop_start_status = 1;

uint32_t write_MAP3_ITIMER10(uint32_t offset, uint32_t size, uint32_t value){
    switch (offset) {
        case 0x4:
            timer_tick_count = value;
            start_time_ms = qemu_clock_get_ms(QEMU_CLOCK_VIRTUAL);
            break;
        case 0x8:
            stop_start_status = value;
            break;
        default:
            break;
    }
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, value);
    return 0;
}
uint32_t read_MAP3_ITIMER10(uint32_t offset, uint32_t size){

    uint32_t res = 0;
    // timer starts countdown when we first read from its memory location
    if (start_time_ms == 0) {
        start_time_ms = qemu_clock_get_ms(QEMU_CLOCK_VIRTUAL);
    }
    int curr_time = qemu_clock_get_ms(QEMU_CLOCK_VIRTUAL);
    
    int ticks_left = timer_tick_count - (curr_time - start_time_ms) * TICKS_PER_MS;
    if (ticks_left < 0) {
        // for now this timer is one-shot only
        ticks_left = 0;
    }

    switch (offset) {
        case 0x0:  
            // ticks_left (decrementing value from timer_tick_count to 0)
            res = ticks_left;
            break;
        case 0x4: 
            // setter
            res = timer_tick_count;
            break;
        case 0x8: 
            // stop_start
            if(ticks_left > 0){
                res = 0x15;
            }else{
                res = 0x14;
            }
            break; 
        case 0xc:
            // state (0 = active)
            if (ticks_left  > 0){
                res = 0; // timer still running
            }else{
                res = 1; // timer finished
            }
            break;
        default:
            break;
    }
    qemu_log_mask(LOG_GUEST_ERROR,"%s: offset=0x%x, size=0x%x, value=0x%x\n", __func__, offset, size, res);
    return res;
}



static uint64_t plc_peripheral_read(void *opaque, hwaddr addr, unsigned int size)
{

	uint32_t target_addr = (uint32_t)addr + 0xfff00000;

	const char* region = find_mmio_region(target_addr);

	uint32_t res=0x100;

    CPUState *cpu = qemu_get_cpu(4);

    // manual implementation of the peripheral devices
    // if (target_addr >= 0xFFFBC000 && target_addr < 0xFFFBC02C){ // MAP3_IOC
    //     res = read_MAP3_IOC(target_addr - 0xFFFBC000, size);
    //     return res;
    // }

    // if (target_addr >= 0xFFF50000 && target_addr < 0xFFF50048){ // MAP3_EMB0
    //     res = read_MAP3_EMB0(target_addr - 0xFFF50000, size);
    //     return res;
    // }

    // if (target_addr >= 0xFFF51000 && target_addr < 0xFFF51048){ // MAP3_EMB1
    //     res = read_MAP3_EMB1(target_addr - 0xFFF51000, size);
    //     return res;
    // }

    // if (target_addr >= 0xFFF52000 && target_addr < 0xFFF5208c){ // MAP3_DDR_MEMCTL
    //     res = read_MAP3_DDR_MEMCTL(target_addr - 0xFFF52000, size);
    //     return res;
    // }

    // if (target_addr >= 0xFFF60000 && target_addr < 0xFFF60104){ // MAP3_MMC
    //     res = read_MAP3_MMC(target_addr - 0xFFF60000, size);
    //     return res;
    // }

    // if (target_addr >= 0xFFF70000 && target_addr < 0xFFF70FF8){ // MAP3_LCD
    //     res = read_MAP3_LCD(target_addr - 0xFFF70000, size);
    //     return res;
    // }

    if (target_addr >= 0xFFFA0000 && target_addr < 0xFFFA4000){ // MAP3_BOOL_HELPER
        res = read_MAP3_BOOL_HELPER(target_addr - 0xFFFA0000, size);
        return res;
    }

    // if (target_addr >= 0xFFFB6000 && target_addr < 0xFFFB6024){ // MAP3_ADC
    //     res = read_MAP3_ADC(target_addr - 0xFFFB6000, size);
    //     return res;
    // }

    // if (target_addr >= 0xFFFB8000 && target_addr < 0xFFFB809C){ // MAP3_UART1
    //     res = read_MAP3_UART1(target_addr - 0xFFFB8000, size);
    //     return res;
    // }

    // if (target_addr >= 0xFFFB9000 && target_addr < 0xFFFB9400){ // MAP3_INPUTS include HSCs
    //     res = read_MAP3_INPUTS(target_addr - 0xFFFB9000, size);
    //     return res;
    // }

    // if (target_addr >= 0xFFFBA000 && target_addr < 0xFFFBA214){ // MAP3_OUTPUTS include PLSs
    //     res = read_MAP3_OUTPUTS(target_addr - 0xFFFBA000, size);
    //     return res;
    // }

    if (target_addr >= 0xFFFFFC00 && target_addr < 0xFFFFFE00){ // MAP3_VIC
        if(cpu->in_thread_switch == 1 && cpu->ISR_addr == get_ISR_addr(31)){ // inside thread switch interrupt
            res = read_MAP3_VIC(target_addr - 0xFFFFFC00, size);
            return res;
        }
    }

    if (target_addr >= 0xFFFBB0A0 && target_addr < 0xFFFBB0B0){ // MAP3_ITIMER10
        res = read_MAP3_ITIMER10(target_addr - 0xFFFBB0A0, size);
        return res;
    }


    // legacy codes

    // if (target_addr == 0xfffbb0a4){ // timer 10 setting time
    //     qemu_log_mask(LOG_GUEST_ERROR,"%s: timer10 read original value of %d ticks!\n", __func__, timer10_original_value);
    //     return timer10_original_value;
    // }

    // if (target_addr == 0xfffbb104){ // cyclic count down timer
    //     uint32_t res = count_down_timer();
    //     qemu_log_mask(LOG_GUEST_ERROR,"%s: read count_down_timer 0xfffbb104 value %x!\n", __func__, res);
    //     return res;
    // }

    // if (target_addr == 0xfffbb13c){ // cyclic count up timer
    //     uint32_t res = count_up_timer();
    //     qemu_log_mask(LOG_GUEST_ERROR,"%s: read count_up_timer 0xfffbb13c value %x!\n", __func__, res);
    //     return res;
    // }

    // if (target_addr >= 0xFFFA0000 && target_addr <= 0xFFFA4000){
    //     qemu_log_mask(LOG_GUEST_ERROR,"%s: MAP3_BOOL_HELPER read 0\n", __func__);
    //     return 0;
    // }


    // if (target_addr == 0xfffbb0c0){ // slower timer12 for s7-200
    //     qemu_log_mask(LOG_GUEST_ERROR,"%s: timer12 read original value of %d ticks!\n", __func__, timer12_original_value);
    //     return timer12_original_value;
    // }
    
    if (target_addr == 0xfffffc00){ // return ISR address
        if (cpu != NULL) {
            res = cpu->ISR_addr;
            if(get_ISR_num(res) == 31){ // currently at thread switch interrupt
                cpu->in_thread_switch = 1;
            }
            qemu_log_mask(LOG_GUEST_ERROR,"%s: return ISR addr 0x%x in_thread_switch=%d!\n", __func__, res, cpu->in_thread_switch);
            return res;
        }
    }

    if (target_addr == 0xfffbb128 && watchdog_slow == 1){
        watchdog_value += 0x10;
        qemu_log_mask(LOG_GUEST_ERROR,"%s: really slowed watchdog to 0x%x !\n", __func__, watchdog_value);
        return watchdog_value;
    }

    if (target_addr == 0xfffbb12c){
        return 0;
    }

    // read value from device
    res = tcp_send_to_agent(CMD_READ, target_addr, size, CMD_NOP);

    if (target_addr == 0xfffbb128){ // slower watchdog
        res /= SCALE_WATCHDOG;
        watchdog_value = res;
        qemu_log_mask(LOG_GUEST_ERROR,"%s: slowed watchdog to 0x%x !\n", __func__, res);
    }


    // if (target_addr == 0xfffbb0a0){ // timer10 ticks left
    //     res /= SCALE_TIMER_10;
    //     qemu_log_mask(LOG_GUEST_ERROR,"%s: timer10 read ticks left 0x%x ticks!\n", __func__, res);
    // }

	qemu_log_mask(LOG_GUEST_ERROR, "%s: dev=%s addr=0x%x size=0x%x value=0x%x\n",
                  __func__, region, (int)target_addr, (int)size, res);

    // exit current IRQ
    if ((target_addr == 0xfffffc88) && (get_ISR_num(cpu->ISR_addr) != 31) && (get_ISR_num(cpu->ISR_addr) != 1)){ // config
        qemu_log_mask(LOG_GUEST_ERROR, "[+] Signify agent to quit IRQ 0x%x and asking for continuing IRQ\n", cpu->ISR_addr);
        uint32_t irq_res = tcp_send_to_agent(CMD_EXIT_IRQ, CMD_NOP, CMD_NOP, CMD_NOP);
        if (irq_res != 0){ // has more IRQs
            cpu->IRQ_count = 2;
            // set ISR addr
            cpu->ISR_addr = irq_res;
            cpu_exit(cpu);
        }else{
            if(cpu->in_thread_switch == 1){
                // set current ISR address back to layer one
                cpu->ISR_addr = get_ISR_addr(31);
                qemu_log_mask(LOG_GUEST_ERROR, "[+] Still in thread switch ISR\n");
            }
        }
    }

	return res;
}

static void plc_peripheral_write(void *opaque, hwaddr addr, uint64_t val64, unsigned int size)
{
    uint32_t target_addr = (uint32_t)addr + 0xfff00000;
	const char* region = find_mmio_region(target_addr);
	uint32_t value = val64;
    CPUState *cpu = qemu_get_cpu(4);

    if(target_addr == 0xfff00004){
        qemu_log_mask(LOG_GUEST_ERROR,"Set watchdog slowed\n");
        watchdog_slow = 1;
        cpu->int1_freq = 200;
        return;
    }
    // disable uart access for s7-200
    // if( (target_addr == 0xfffbb11c && value == 0) || 
    //     (target_addr >= 0xfffb8000 && target_addr <= 0xfffb8100)){
    //     qemu_log_mask(LOG_GUEST_ERROR,"%s: s7 200 return\n", __func__);
    //     return;
    // }

    // if(target_addr == 0xfffbb0c4){ // slower timer12 in s7-200
    //     timer12_original_value = value;
    //     if (value < 50000){
    //         value = value * 0x10000;
    //         qemu_log_mask(LOG_GUEST_ERROR,"%s: timer12 set slowed 0x10000 times to %d ticks!\n", __func__, value);
    //     }
    // }

    // manual implementation of peripheral devices

    // if (target_addr >= 0xFFFBC000 && target_addr <= 0xFFFBC02C){ // MAP3_IOC
    //     write_MAP3_IOC(target_addr - 0xFFFBC000, size, value);
    //     return;
    // }

    // if (target_addr >= 0xFFFBD000 && target_addr <= 0xFFFBE000){ // MAP3_FL_MEMCTL
    //     write_MAP3_FL_MEMCTL(target_addr - 0xFFFBD000, size, value);
    //     return;
    // }

    // if (target_addr >= 0xFFF50000 && target_addr <= 0xFFF50048){ // MAP3_EMB0
    //     write_MAP3_EMB0(target_addr - 0xFFF50000, size, value);
    //     return;
    // }

    // if (target_addr >= 0xFFF51000 && target_addr <= 0xFFF51048){ // MAP3_EMB1
    //     write_MAP3_EMB1(target_addr - 0xFFF51000, size, value);
    //     return;
    // }

    // if (target_addr >= 0xFFF52000 && target_addr <= 0xFFF5208c){ // MAP3_DDR_MEMCTL
    //     write_MAP3_DDR_MEMCTL(target_addr - 0xFFF52000, size, value);
    //     return;
    // }

    // if (target_addr >= 0xFFF60000 && target_addr <= 0xFFF60104){ // MAP3_MMC
    //     write_MAP3_MMC(target_addr - 0xFFF60000, size, value);
    //     return;
    // }

    // if (target_addr >= 0xFFF70000 && target_addr <= 0xFFF70FF8){ // MAP3_LCD
    //     write_MAP3_LCD(target_addr - 0xFFF70000, size, value);
    //     return;
    // }

    if (target_addr >= 0xFFFA0000 && target_addr <= 0xFFFA4000){ // MAP3_LCD
        write_MAP3_BOOL_HELPER(target_addr - 0xFFFA0000, size, value);
        return;
    }

    if (target_addr >= 0xFFFFFC00 && target_addr <= 0xFFFFFE00){ // MAP3_VIC
        if(cpu->in_thread_switch == 1 && cpu->ISR_addr == get_ISR_addr(31)){
            write_MAP3_VIC(target_addr - 0xFFFFFC00, size, value);
            return;
        }
    }

    // if (target_addr >= 0xFFFB6000 && target_addr <= 0xFFFB6024){ // MAP3_ADC
    //     write_MAP3_ADC(target_addr - 0xFFFB6000, size, value);
    //     return;
    // }

    // if (target_addr >= 0xFFFB8000 && target_addr <= 0xFFFB809C){ // MAP3_UART1
    //     write_MAP3_UART1(target_addr - 0xFFFB8000, size, value);
    //     return;
    // }

    // if (target_addr >= 0xFFFB9000 && target_addr <= 0xFFFB9400){ // MAP3_INPUTS include HSCs
    //     write_MAP3_INPUTS(target_addr - 0xFFFB9000, size, value);
    //     return;
    // }

    // if (target_addr >= 0xFFFBA000 && target_addr <= 0xFFFBA214){ // MAP3_OUTPUTS include PLSs
    //     write_MAP3_OUTPUTS(target_addr - 0xFFFBA000, size, value);
    //     return;
    // }

    if (target_addr >= 0xFFFBB0A0 && target_addr <= 0xFFFBB0B0){ // MAP3_ITIMER10
        write_MAP3_ITIMER10(target_addr - 0xFFFBB0A0, size, value);
        return;
    }

    // legacy codes

    // if (target_addr >= 0xFFFA0000 && target_addr <= 0xFFFA4000){
    //     qemu_log_mask(LOG_GUEST_ERROR,"%s: MAP3_BOOL_HELPER write 0x%x\n", __func__, value);
    //     return;
    // }

    // if(target_addr == 0xfffbb0a4){ // slower timer10 in s7-1200
    //     timer10_original_value = value;
    //     if (value < 50000){
    //         value = value * SCALE_TIMER_10;
    //         qemu_log_mask(LOG_GUEST_ERROR,"%s: timer10 set 0x%x slowed 0x%x times to 0x%x ticks!\n", __func__, timer10_original_value, SCALE_TIMER_10, value);
    //     }
    // }

    if(target_addr == 0xfffffca0 && value == 0x80000000){
        if (((cpu->ARM_CPSR >> 7) & 1) == 0) { //interrupt is turned on
            cpu->IRQ_count = 1;
            cpu->ISR_addr = get_ISR_addr(31);
            cpu->in_thread_switch = 1;
            qemu_log_mask(LOG_GUEST_ERROR, "Manual trigger thread switch interrupt\n");
            cpu_exit(cpu);
        }else{
            qemu_log_mask(LOG_GUEST_ERROR, "Manual trigger thread switch interrupt: force_ask set\n");
            cpu->force_ask = 1; // inform when cpsie, take int NO.31
        }
        return;
    }

    if(target_addr >= 0xfffffd80 && target_addr <= 0xfffffe00){ // set VIC ISR address
        uint32_t ISR_num = (target_addr - 0xfffffd80) / 4;
        set_ISR_addr(ISR_num, value); // save the ISR addr
    }

    uint32_t res = tcp_send_to_agent(CMD_WRITE, target_addr, size, value);

    if (res != 0x77746f6b){
        qemu_log_mask(LOG_GUEST_ERROR,"%s: write error!", __func__);
    }
    

    qemu_log_mask(LOG_GUEST_ERROR, "%s: dev=%s addr=0x%x value=0x%x size=0x%x res=0x%x\n",
                  __func__, region, (int)target_addr, (int)value, size, res);

    if (((cpu->ARM_CPSR >> 7) & 1) == 0 && target_addr == 0xfffffca0){ // asking for IRQ every write to peri device
        qemu_log_mask(LOG_GUEST_ERROR, "[+] peri write Asking for IRQs \n");
        uint32_t irq_res = tcp_send_to_agent(CMD_ASK_IRQ, CMD_NOP, CMD_NOP, CMD_NOP);
        if(irq_res != 0){ // there is a pending IRQ
            // set ISR address
            cpu->IRQ_count = 1;
            cpu->ISR_addr = irq_res;
            qemu_log_mask(LOG_GUEST_ERROR, "[+] Got IRQ 0x%x, Exit cpu main loop\n", irq_res);
            cpu_exit(cpu);
        }else{ // there's no pending IRQ
            qemu_log_mask(LOG_GUEST_ERROR, "[+] No pending IRQs\n");
        }
    }
    
}

static const MemoryRegionOps plc_peripheral_ops = {
	.read = plc_peripheral_read,
    .write = plc_peripheral_write,
	.endianness = DEVICE_NATIVE_ENDIAN,
};



static void plc_peripheral_instance_init(Object *obj)
{
	PLCperipheralState *s = PLC_peripheral(obj);

	/* allocate memory map region */
	memory_region_init_io(&s->iomem, obj, &plc_peripheral_ops, s, TYPE_PLC_peripheral, 0xfff00);
	sysbus_init_mmio(SYS_BUS_DEVICE(obj), &s->iomem);

	s->chip_id = CHIP_ID;
    CPUState *cpu = qemu_get_cpu(4);
    if (cpu != NULL) {
        qemu_log_mask(LOG_GUEST_ERROR, "cpu para init\n");
        cpu->IRQ_count = 0;
        cpu->ARM_CPSR = 0xffffffff;
    }
}

/* create a new type to define the info related to our device */
static const TypeInfo plc_peripheral_info = {
	.name = TYPE_PLC_peripheral,
	.parent = TYPE_SYS_BUS_DEVICE,
	.instance_size = sizeof(PLCperipheralState),
	.instance_init = plc_peripheral_instance_init,
};

static void plc_peripheral_register_types(void)
{
    type_register_static(&plc_peripheral_info);
}

type_init(plc_peripheral_register_types)

/*
 * Create the PLC peripheral device.
*/
DeviceState *plc_peripheral_create(hwaddr addr)
{
	DeviceState *dev = qdev_new(TYPE_PLC_peripheral);
	sysbus_realize_and_unref(SYS_BUS_DEVICE(dev), &error_fatal);
	sysbus_mmio_map(SYS_BUS_DEVICE(dev), 0, addr);
	return dev;
} 
