#include "qemu/osdep.h"
#include "qapi/error.h" /* provides error_fatal() handler */
#include "hw/sysbus.h" /* provides all sysbus registering func */
#include "string.h"
#include "qemu/log.h"
#include "qemu/timer.h"
#include "hw/core/cpu.h"
#include "hw/misc/plc_agent.h"
#include "exec/memory.h"
#include "hw/loader.h"
#define TYPE_PLC_mac "xlnx.plc_mac"
typedef struct PLCmacState PLCmacState;
DECLARE_INSTANCE_CHECKER(PLCmacState, PLC_mac, TYPE_PLC_mac)

#define REG_ID 	0x0
#define CHIP_ID	0xBA000001

DeviceState *plc_mac_create(hwaddr addr);

struct PLCmacState {
	SysBusDevice parent_obj;
	MemoryRegion iomem;
    qemu_irq irq;
	uint64_t chip_id;
};

uint32_t DMA_len=0;
uint32_t DMA_addr=0;

uint32_t DMA_recv_len=0;
uint32_t DMA_recv_addr=0;

// MAC_ID = 1 for s7-1200 211/212/214
// MAC_ID = 2 for s7-1200 215/217
// MAC_ID = 3 for s7-200 0AA0
// MAC_ID = 4 for s7-200 0AA1
uint32_t MAC_ID = 1;



static uint64_t plc_mac_read(void *opaque, hwaddr addr, unsigned int size)
{	
	// uint32_t mac_base = 0;
	// switch(MAC_ID){
	// case 1:
	// 	mac_base = 0x7ff0000;
	// 	break;
	// case 2:
	// 	mac_base = 0x7ff0000;
	// 	break;
	// case 3: 
	// 	mac_base = 0x1ff0000;
	// 	break;
	// case 4:
	// 	mac_base = 0x3ff0000;
	// default:
	// 	mac_base = 0;
	// }

	uint32_t target_addr = (uint32_t)addr + 0x7ff0000;

	int res=0x100;
	uint32_t value = 0;
    // uint32_t agent_buffer[4];
    // uint32_t option = 0;
    // uint32_t value = 0;
    // agent_buffer[0] = plc_swap_endian(option^0xcafebabe);
    // agent_buffer[1] = plc_swap_endian(target_addr^0xcafebabe);
    // agent_buffer[2] = plc_swap_endian(size^0xcafebabe);
    // agent_buffer[3] = plc_swap_endian(value^0xcafebabe);
    // res = send_to_agent((unsigned char*)agent_buffer);
    // res = plc_swap_endian(res)^0xcafebabe;
	res = tcp_send_to_agent(CMD_READ, target_addr, size, CMD_NOP);

	qemu_log_mask(LOG_GUEST_ERROR, "%s: dev=MAC addr=0x%x size=0x%x value=0x%x\n",
                  __func__, (int)target_addr, (int)size, res);
	if(MAC_ID == 1){ // 211 212 214
		if(target_addr == 0x7ff00c0 ||
			target_addr == 0x7ff00d4 ||
			target_addr == 0x7ff00e8 ||
			target_addr == 0x7ff00fc ||
			target_addr == 0x7ff0110 ||
			target_addr == 0x7ff0124 ||
			target_addr == 0x7ff0138 ||
			target_addr == 0x7ff014c ||
			target_addr == 0x7ff0160 ||
			target_addr == 0x7ff0174 ||
			target_addr == 0x7ff0188 ||
			target_addr == 0x7ff019c ||
			target_addr == 0x7ff01b0 ||
			target_addr == 0x7ff01c4 ||
			target_addr == 0x7ff01d8 ||
			target_addr == 0x7ff01ec){
			DMA_recv_len = (res & 0x3FFFFFFF) >> 16;
			qemu_log_mask(LOG_GUEST_ERROR, "%s: set DMA_recv_len to %x\n",
	                  __func__, DMA_recv_len);
		}

		if((target_addr == 0x7ff00c8 ||
			target_addr == 0x7ff00dc ||
			target_addr == 0x7ff00f0 ||
			target_addr == 0x7ff0104 ||
			target_addr == 0x7ff0118 ||
			target_addr == 0x7ff012c ||
			target_addr == 0x7ff0140 ||
			target_addr == 0x7ff0154 ||
			target_addr == 0x7ff0168 ||
			target_addr == 0x7ff017c ||
			target_addr == 0x7ff0190 ||
			target_addr == 0x7ff01a4 ||
			target_addr == 0x7ff01b8 ||
			target_addr == 0x7ff01cc ||
			target_addr == 0x7ff01e0 ||
			target_addr == 0x7ff01f4) && res != 0){
			DMA_recv_addr = res;
			qemu_log_mask(LOG_GUEST_ERROR, "%s: set DMA_recv_addr to %x\n",
	                  __func__, DMA_recv_addr);
			if(DMA_recv_len > 0){
				AddressSpace *as = &address_space_memory;
				MemTxResult res;
		        MemTxAttrs attrs = {.unspecified = 0,
		                .secure = 0,
		                .user = 0,
		                .debug = 0,
		                .requester_id = 0,
		        };
				for(uint32_t addr = DMA_recv_addr; addr < DMA_recv_addr+DMA_recv_len; addr += 4){
					// read memory from device
					// uint32_t agent_buffer[4];
				    // uint32_t option = 0; // read
				    // uint32_t size = 4;
				    // agent_buffer[0] = plc_swap_endian(option^0xcafebabe);
				    // agent_buffer[1] = plc_swap_endian(addr^0xcafebabe);
				    // agent_buffer[2] = plc_swap_endian(size^0xcafebabe);
				    // agent_buffer[3] = plc_swap_endian(value^0xcafebabe);
				    // uint32_t res = plc_swap_endian(send_to_agent((unsigned char*)agent_buffer))^0xcafebabe;

					res = tcp_send_to_agent(CMD_READ, addr, 4, CMD_NOP);

				    qemu_log_mask(LOG_GUEST_ERROR, "%s: DMA_SYNC_READ addr=0x%x value=0x%x size=0x%x res=0x%x\n",
		                  __func__, (int)addr, (int)value, size, res);

				    // write into qemu memory
				    uint32_t write_buf = plc_swap_endian(res);
				    res = address_space_write(as, addr, attrs, (void*)&write_buf, 4);
					
				}
			}
		}
	}
	if(MAC_ID == 2){ // 215 217
		if(target_addr == 0x7ff0184 ||
			target_addr == 0x7ff019c ||
			target_addr == 0x7ff01b4 ||
			target_addr == 0x7ff01cc ||
			target_addr == 0x7ff01e4 ||
			target_addr == 0x7ff01fc ||
			target_addr == 0x7ff0214 ||
			target_addr == 0x7ff022c ||
			target_addr == 0x7ff0244 ||
			target_addr == 0x7ff025c ||
			target_addr == 0x7ff0274 ||
			target_addr == 0x7ff028c ||
			target_addr == 0x7ff02a4 ||
			target_addr == 0x7ff02bc ||
			target_addr == 0x7ff02d4 ||
			target_addr == 0x7ff02ec ){
			DMA_recv_len = (res & 0x3FFFFFFF) >> 16;
			qemu_log_mask(LOG_GUEST_ERROR, "%s: set DMA_recv_len to %x\n",
	                  __func__, DMA_recv_len);
		}

		if((target_addr == 0x7ff018c ||
			target_addr == 0x7ff01a4 ||
			target_addr == 0x7ff01bc ||
			target_addr == 0x7ff01d4 ||
			target_addr == 0x7ff01ec ||
			target_addr == 0x7ff0204 ||
			target_addr == 0x7ff021c ||
			target_addr == 0x7ff0234 ||
			target_addr == 0x7ff024c ||
			target_addr == 0x7ff0264 ||
			target_addr == 0x7ff027c ||
			target_addr == 0x7ff0294 ||
			target_addr == 0x7ff02ac ||
			target_addr == 0x7ff02c4 ||
			target_addr == 0x7ff02dc ||
			target_addr == 0x7ff02f4) && res != 0){
			DMA_recv_addr = res;
			qemu_log_mask(LOG_GUEST_ERROR, "%s: set DMA_recv_addr to %x\n",
	                  __func__, DMA_recv_addr);
			if(DMA_recv_len > 0){
				AddressSpace *as = &address_space_memory;
				MemTxResult res;
		        MemTxAttrs attrs = {.unspecified = 0,
		                .secure = 0,
		                .user = 0,
		                .debug = 0,
		                .requester_id = 0,
		        };
				for(uint32_t addr = DMA_recv_addr; addr < DMA_recv_addr+DMA_recv_len; addr += 4){
					// read memory from device
					// uint32_t agent_buffer[4];
				    // uint32_t option = 0; // read
				    // uint32_t size = 4;
				    // agent_buffer[0] = plc_swap_endian(option^0xcafebabe);
				    // agent_buffer[1] = plc_swap_endian(addr^0xcafebabe);
				    // agent_buffer[2] = plc_swap_endian(size^0xcafebabe);
				    // agent_buffer[3] = plc_swap_endian(value^0xcafebabe);
				    // uint32_t res = plc_swap_endian(send_to_agent((unsigned char*)agent_buffer))^0xcafebabe;
				    res = tcp_send_to_agent(CMD_READ, addr, 4, CMD_NOP);

				    qemu_log_mask(LOG_GUEST_ERROR, "%s: DMA_SYNC_READ addr=0x%x value=0x%x size=0x%x res=0x%x\n",
		                  __func__, (int)addr, (int)value, size, res);

				    // write into qemu memory
				    uint32_t write_buf = plc_swap_endian(res);
				    res = address_space_write(as, addr, attrs, (void*)&write_buf, 4);
					
				}
			}
		}
	}
	if(MAC_ID == 3){
		if(target_addr == 0x1ff00c0 ||
			target_addr == 0x1ff00d4 ||
			target_addr == 0x1ff00e8 ||
			target_addr == 0x1ff00fc ||
			target_addr == 0x1ff0110 ||
			target_addr == 0x1ff0124 ||
			target_addr == 0x1ff0138 ||
			target_addr == 0x1ff014c ||
			target_addr == 0x1ff0160 ||
			target_addr == 0x1ff0174 ||
			target_addr == 0x1ff0188 ||
			target_addr == 0x1ff019c ||
			target_addr == 0x1ff01b0 ||
			target_addr == 0x1ff01c4 ||
			target_addr == 0x1ff01d8 ||
			target_addr == 0x1ff01ec){
			DMA_recv_len = (res & 0x3FFFFFFF) >> 16;
			qemu_log_mask(LOG_GUEST_ERROR, "%s: set DMA_recv_len to 0x%x\n",
	                  __func__, DMA_recv_len);
		}

		if((target_addr == 0x1ff00c8 ||
			target_addr == 0x1ff00dc ||
			target_addr == 0x1ff00f0 ||
			target_addr == 0x1ff0104 ||
			target_addr == 0x1ff0118 ||
			target_addr == 0x1ff012c ||
			target_addr == 0x1ff0140 ||
			target_addr == 0x1ff0154 ||
			target_addr == 0x1ff0168 ||
			target_addr == 0x1ff017c ||
			target_addr == 0x1ff0190 ||
			target_addr == 0x1ff01a4 ||
			target_addr == 0x1ff01b8 ||
			target_addr == 0x1ff01cc ||
			target_addr == 0x1ff01e0 ||
			target_addr == 0x1ff01f4) && res != 0){
			DMA_recv_addr = res;
			qemu_log_mask(LOG_GUEST_ERROR, "%s: set DMA_recv_addr to 0x%x\n",
	                  __func__, DMA_recv_addr);
			if(DMA_recv_len > 0){
				AddressSpace *as = &address_space_memory;
				MemTxResult res;
		        MemTxAttrs attrs = {.unspecified = 0,
		                .secure = 0,
		                .user = 0,
		                .debug = 0,
		                .requester_id = 0,
		        };
				for(uint32_t addr = DMA_recv_addr; addr < DMA_recv_addr+DMA_recv_len; addr += 4){
					// read memory from device
					// uint32_t agent_buffer[4];
				    // uint32_t option = 0; // read
				    // uint32_t size = 4;
				    // agent_buffer[0] = plc_swap_endian(option^0xcafebabe);
				    // agent_buffer[1] = plc_swap_endian(addr^0xcafebabe);
				    // agent_buffer[2] = plc_swap_endian(size^0xcafebabe);
				    // agent_buffer[3] = plc_swap_endian(value^0xcafebabe);
				    // uint32_t res = plc_swap_endian(send_to_agent((unsigned char*)agent_buffer))^0xcafebabe;
				    res = tcp_send_to_agent(CMD_READ, addr, 4, CMD_NOP);

				    qemu_log_mask(LOG_GUEST_ERROR, "%s: DMA_SYNC_READ addr=0x%x value=0x%x size=0x%x res=0x%x\n",
		                  __func__, (int)addr, (int)value, size, res);

				    // write into qemu memory
				    uint32_t write_buf = plc_swap_endian(res);
				    res = address_space_write(as, addr, attrs, (void*)&write_buf, 4);
					
				}
			}
		}
	}
	if(MAC_ID == 4){
		if(target_addr == 0x3ff00c0 ||
			target_addr == 0x3ff00d4 ||
			target_addr == 0x3ff00e8 ||
			target_addr == 0x3ff00fc ||
			target_addr == 0x3ff0110 ||
			target_addr == 0x3ff0124 ||
			target_addr == 0x3ff0138 ||
			target_addr == 0x3ff014c ||
			target_addr == 0x3ff0160 ||
			target_addr == 0x3ff0174 ||
			target_addr == 0x3ff0188 ||
			target_addr == 0x3ff019c ||
			target_addr == 0x3ff01b0 ||
			target_addr == 0x3ff01c4 ||
			target_addr == 0x3ff01d8 ||
			target_addr == 0x3ff01ec){
			DMA_recv_len = (res & 0x3FFFFFFF) >> 16;
			qemu_log_mask(LOG_GUEST_ERROR, "%s: set DMA_recv_len to 0x%x\n",
	                  __func__, DMA_recv_len);
		}

		if((target_addr == 0x3ff00c8 ||
			target_addr == 0x3ff00dc ||
			target_addr == 0x3ff00f0 ||
			target_addr == 0x3ff0104 ||
			target_addr == 0x3ff0118 ||
			target_addr == 0x3ff012c ||
			target_addr == 0x3ff0140 ||
			target_addr == 0x3ff0154 ||
			target_addr == 0x3ff0168 ||
			target_addr == 0x3ff017c ||
			target_addr == 0x3ff0190 ||
			target_addr == 0x3ff01a4 ||
			target_addr == 0x3ff01b8 ||
			target_addr == 0x3ff01cc ||
			target_addr == 0x3ff01e0 ||
			target_addr == 0x3ff01f4) && res != 0){
			DMA_recv_addr = res;
			qemu_log_mask(LOG_GUEST_ERROR, "%s: set DMA_recv_addr to 0x%x\n",
	                  __func__, DMA_recv_addr);
			if(DMA_recv_len > 0){
				AddressSpace *as = &address_space_memory;
				MemTxResult res;
		        MemTxAttrs attrs = {.unspecified = 0,
		                .secure = 0,
		                .user = 0,
		                .debug = 0,
		                .requester_id = 0,
		        };
				for(uint32_t addr = DMA_recv_addr; addr < DMA_recv_addr+DMA_recv_len; addr += 4){
					// read memory from device
					// uint32_t agent_buffer[4];
				    // uint32_t option = 0; // read
				    // uint32_t size = 4;
				    // agent_buffer[0] = plc_swap_endian(option^0xcafebabe);
				    // agent_buffer[1] = plc_swap_endian(addr^0xcafebabe);
				    // agent_buffer[2] = plc_swap_endian(size^0xcafebabe);
				    // agent_buffer[3] = plc_swap_endian(value^0xcafebabe);
				    // uint32_t res = plc_swap_endian(send_to_agent((unsigned char*)agent_buffer))^0xcafebabe;
				    res = tcp_send_to_agent(CMD_READ, addr, 4, CMD_NOP);

				    qemu_log_mask(LOG_GUEST_ERROR, "%s: DMA_SYNC_READ addr=0x%x value=0x%x size=0x%x res=0x%x\n",
		                  __func__, (int)addr, (int)value, size, res);

				    // write into qemu memory
				    uint32_t write_buf = plc_swap_endian(res);
				    res = address_space_write(as, addr, attrs, (void*)&write_buf, 4);
					
				}
			}
		}
	}
	return res;
}
static void plc_mac_write(void *opaque, hwaddr addr, uint64_t val64, unsigned int size)
{	
	// uint32_t mac_base = 0;
	// switch(MAC_ID){
	// case 1:
	// 	mac_base = 0x7ff0000;
	// 	break;
	// case 2:
	// 	mac_base = 0x7ff0000;
	// 	break;
	// case 3: 
	// 	mac_base = 0x1ff0000;
	// 	break;
	// case 4:
	// 	mac_base = 0x3ff0000;
	// default:
	// 	mac_base = 0;
	// }

	uint32_t target_addr = (uint32_t)addr + 0x7ff0000;
	uint32_t value = val64;

	if(MAC_ID == 1){ // 211 212 214

		if(target_addr == 0x7ff0204 ||
			target_addr == 0x7ff0218 ||
			target_addr == 0x7ff022c ||
			target_addr == 0x7ff0240 ||
			target_addr == 0x7ff0254 ||
			target_addr == 0x7ff0268 ||
			target_addr == 0x7ff027c ||
			target_addr == 0x7ff0290 ||
			target_addr == 0x7ff02a4 ||
			target_addr == 0x7ff02b8 ||
			target_addr == 0x7ff02cc ||
			target_addr == 0x7ff02e0 ||
			target_addr == 0x7ff02f4 ||
			target_addr == 0x7ff0308 ||
			target_addr == 0x7ff031c ||
			target_addr == 0x7ff0330 ||
			target_addr == 0x7ff0344 ||
			target_addr == 0x7ff0358 ||
			target_addr == 0x7ff036c ||
			target_addr == 0x7ff0380 ||
			target_addr == 0x7ff0394 ||
			target_addr == 0x7ff03a8 ||
			target_addr == 0x7ff03bc ||
			target_addr == 0x7ff03d0 ||
			target_addr == 0x7ff03e4 ||
			target_addr == 0x7ff03f8 ||
			target_addr == 0x7ff040c ||
			target_addr == 0x7ff0420 ||
			target_addr == 0x7ff0434 ||
			target_addr == 0x7ff0448 ||
			target_addr == 0x7ff045c ||
			target_addr == 0x7ff0470 ){ // DMA buffer length
			DMA_len = value & 0x7ff;
			qemu_log_mask(LOG_GUEST_ERROR, "%s: set DMA_len to %x\n",
	                  __func__, DMA_len);
		}

		if(target_addr == 0x7ff021c ||
			target_addr == 0x7ff0230 ||
			target_addr == 0x7ff0244 ||
			target_addr == 0x7ff0258 ||
			target_addr == 0x7ff026c ||
			target_addr == 0x7ff0280 ||
			target_addr == 0x7ff0294 ||
			target_addr == 0x7ff02a8 ||
			target_addr == 0x7ff02bc ||
			target_addr == 0x7ff02d0 ||
			target_addr == 0x7ff02e4 ||
			target_addr == 0x7ff02f8 ||
			target_addr == 0x7ff030c ||
			target_addr == 0x7ff0320 ||
			target_addr == 0x7ff0334 ||
			target_addr == 0x7ff0348 ||
			target_addr == 0x7ff035c ||
			target_addr == 0x7ff0370 ||
			target_addr == 0x7ff0384 ||
			target_addr == 0x7ff0398 ||
			target_addr == 0x7ff03ac ||
			target_addr == 0x7ff03c0 ||
			target_addr == 0x7ff03d4 ||
			target_addr == 0x7ff03e8 ||
			target_addr == 0x7ff03fc ||
			target_addr == 0x7ff0410 ||
			target_addr == 0x7ff0424 ||
			target_addr == 0x7ff0438 ||
			target_addr == 0x7ff044c ||
			target_addr == 0x7ff0460 ||
			target_addr == 0x7ff0474 ||
			target_addr == 0x7ff0488 ){ // DMA buffer address
			DMA_addr = value;
			qemu_log_mask(LOG_GUEST_ERROR, "%s: set DMA_addr to %x\n",
	                  __func__, DMA_addr);
		}

		if((target_addr == 0x7ff0214 ||
			target_addr == 0x7ff0228 ||
			target_addr == 0x7ff023c ||
			target_addr == 0x7ff0250 ||
			target_addr == 0x7ff0264 ||
			target_addr == 0x7ff0278 ||
			target_addr == 0x7ff028c ||
			target_addr == 0x7ff02a0 ||
			target_addr == 0x7ff02b4 ||
			target_addr == 0x7ff02c8 ||
			target_addr == 0x7ff02dc ||
			target_addr == 0x7ff02f0 ||
			target_addr == 0x7ff0304 ||
			target_addr == 0x7ff0318 ||
			target_addr == 0x7ff032c ||
			target_addr == 0x7ff0340 ||
			target_addr == 0x7ff0354 ||
			target_addr == 0x7ff0368 ||
			target_addr == 0x7ff037c ||
			target_addr == 0x7ff0390 ||
			target_addr == 0x7ff03a4 ||
			target_addr == 0x7ff03b8 ||
			target_addr == 0x7ff03cc ||
			target_addr == 0x7ff03e0 ||
			target_addr == 0x7ff03f4 ||
			target_addr == 0x7ff0408 ||
			target_addr == 0x7ff041c ||
			target_addr == 0x7ff0430 ||
			target_addr == 0x7ff0444 ||
			target_addr == 0x7ff0458 ||
			target_addr == 0x7ff046c ||
			target_addr == 0x7ff0480) && (value != 0) && (DMA_addr < 0x7ff0000)){ // sync to device
			uint32_t read_buf;
			AddressSpace *as = &address_space_memory;
			MemTxResult res;
	        MemTxAttrs attrs = {.unspecified = 0,
	                .secure = 0,
	                .user = 0,
	                .debug = 0,
	                .requester_id = 0,
	        };
			for(uint32_t addr = DMA_addr; addr < DMA_addr+DMA_len; addr += 4){
				// read memory from qemu
				res = address_space_read(as, addr, attrs, (void*)&read_buf, 4);
				uint32_t value = plc_swap_endian(read_buf);

				// uint32_t agent_buffer[4];
			    // uint32_t option = 1; // write
			    // uint32_t size = 4;
			    // agent_buffer[0] = plc_swap_endian(option^0xcafebabe);
			    // agent_buffer[1] = plc_swap_endian(addr^0xcafebabe);
			    // agent_buffer[2] = plc_swap_endian(size^0xcafebabe);
			    // agent_buffer[3] = plc_swap_endian(value^0xcafebabe);
			    // // write to device
			    // uint32_t res = plc_swap_endian(send_to_agent((unsigned char*)agent_buffer));

			    res = tcp_send_to_agent(CMD_WRITE, addr, 4, value);

			    qemu_log_mask(LOG_GUEST_ERROR, "%s: DMA_SYNC addr=0x%x value=0x%x size=0x%x res=0x%x\n",
	                  __func__, (int)addr, (int)value, size, res);
			}
		}
	}
	if(MAC_ID == 2){ // MAC_ID == 2  215 217
		if(target_addr == 0x7ff0308 ||
			target_addr == 0x7ff0320 ||
			target_addr == 0x7ff0338 ||
			target_addr == 0x7ff0350 ||
			target_addr == 0x7ff0368 ||
			target_addr == 0x7ff0380 ||
			target_addr == 0x7ff0398 ||
			target_addr == 0x7ff03b0 ||
			target_addr == 0x7ff03c8 ||
			target_addr == 0x7ff03e0 ||
			target_addr == 0x7ff03f8 ||
			target_addr == 0x7ff0410 ||
			target_addr == 0x7ff0428 ||
			target_addr == 0x7ff0440 ||
			target_addr == 0x7ff0458 ||
			target_addr == 0x7ff0470 ||
			target_addr == 0x7ff0488 ||
			target_addr == 0x7ff04a0 ||
			target_addr == 0x7ff04b8 ||
			target_addr == 0x7ff04d0 ||
			target_addr == 0x7ff04e8 ||
			target_addr == 0x7ff0500 ||
			target_addr == 0x7ff0518 ||
			target_addr == 0x7ff0530 ||
			target_addr == 0x7ff0548 ||
			target_addr == 0x7ff0560 ||
			target_addr == 0x7ff0578 ||
			target_addr == 0x7ff0590 ||
			target_addr == 0x7ff05a8 ||
			target_addr == 0x7ff05c0 ||
			target_addr == 0x7ff05d8 ||
			target_addr == 0x7ff05f0 ){ // DMA buffer length
			DMA_len = value & 0x7ff;
			qemu_log_mask(LOG_GUEST_ERROR, "%s: set DMA_len to %x\n",
	                  __func__, DMA_len);
		}

		if(target_addr == 0x7ff0324 ||
			target_addr == 0x7ff033c ||
			target_addr == 0x7ff0354 ||
			target_addr == 0x7ff036c ||
			target_addr == 0x7ff0384 ||
			target_addr == 0x7ff039c ||
			target_addr == 0x7ff03b4 ||
			target_addr == 0x7ff03cc ||
			target_addr == 0x7ff03e4 ||
			target_addr == 0x7ff03fc ||
			target_addr == 0x7ff0414 ||
			target_addr == 0x7ff042c ||
			target_addr == 0x7ff0444 ||
			target_addr == 0x7ff045c ||
			target_addr == 0x7ff0474 ||
			target_addr == 0x7ff048c ||
			target_addr == 0x7ff04a4 ||
			target_addr == 0x7ff04bc ||
			target_addr == 0x7ff04d4 ||
			target_addr == 0x7ff04ec ||
			target_addr == 0x7ff0504 ||
			target_addr == 0x7ff051c ||
			target_addr == 0x7ff0534 ||
			target_addr == 0x7ff054c ||
			target_addr == 0x7ff0564 ||
			target_addr == 0x7ff057c ||
			target_addr == 0x7ff0594 ||
			target_addr == 0x7ff05ac ||
			target_addr == 0x7ff05c4 ||
			target_addr == 0x7ff05dc ||
			target_addr == 0x7ff05f4 ||
			target_addr == 0x7ff060c ){ // DMA buffer address
			DMA_addr = value;
			qemu_log_mask(LOG_GUEST_ERROR, "%s: set DMA_addr to %x\n",
	                  __func__, DMA_addr);
		}

		if((target_addr == 0x7ff031c ||
			target_addr == 0x7ff0334 ||
			target_addr == 0x7ff034c ||
			target_addr == 0x7ff0364 ||
			target_addr == 0x7ff037c ||
			target_addr == 0x7ff0394 ||
			target_addr == 0x7ff03ac ||
			target_addr == 0x7ff03c4 ||
			target_addr == 0x7ff03dc ||
			target_addr == 0x7ff03f4 ||
			target_addr == 0x7ff040c ||
			target_addr == 0x7ff0424 ||
			target_addr == 0x7ff043c ||
			target_addr == 0x7ff0454 ||
			target_addr == 0x7ff046c ||
			target_addr == 0x7ff0484 ||
			target_addr == 0x7ff049c ||
			target_addr == 0x7ff04b4 ||
			target_addr == 0x7ff04cc ||
			target_addr == 0x7ff04e4 ||
			target_addr == 0x7ff04fc ||
			target_addr == 0x7ff0514 ||
			target_addr == 0x7ff052c ||
			target_addr == 0x7ff0544 ||
			target_addr == 0x7ff055c ||
			target_addr == 0x7ff0574 ||
			target_addr == 0x7ff058c ||
			target_addr == 0x7ff05a4 ||
			target_addr == 0x7ff05bc ||
			target_addr == 0x7ff05d4 ||
			target_addr == 0x7ff05ec ||
			target_addr == 0x7ff0604 ) && (value != 0) && (DMA_addr < 0x7ff0000)){ // sync to device
			uint32_t read_buf;
			AddressSpace *as = &address_space_memory;
			MemTxResult res;
	        MemTxAttrs attrs = {.unspecified = 0,
	                .secure = 0,
	                .user = 0,
	                .debug = 0,
	                .requester_id = 0,
	        };
			for(uint32_t addr = DMA_addr; addr < DMA_addr+DMA_len; addr += 4){
				// read memory from qemu
				res = address_space_read(as, addr, attrs, (void*)&read_buf, 4);
				uint32_t value = plc_swap_endian(read_buf);

				// uint32_t agent_buffer[4];
			    // uint32_t option = 1; // write
			    // uint32_t size = 4;
			    // agent_buffer[0] = plc_swap_endian(option^0xcafebabe);
			    // agent_buffer[1] = plc_swap_endian(addr^0xcafebabe);
			    // agent_buffer[2] = plc_swap_endian(size^0xcafebabe);
			    // agent_buffer[3] = plc_swap_endian(value^0xcafebabe);
			    // // write to device
			    // uint32_t res = plc_swap_endian(send_to_agent((unsigned char*)agent_buffer));
			    res = tcp_send_to_agent(CMD_WRITE, addr, 4, value);
			    qemu_log_mask(LOG_GUEST_ERROR, "%s: DMA_SYNC addr=0x%x value=0x%x size=0x%x res=0x%x\n",
	                  __func__, (int)addr, (int)value, size, res);
			}
		}
	}
	if(MAC_ID == 3){
		if(target_addr == 0x1ff0204 ||
			target_addr == 0x1ff0218 ||
			target_addr == 0x1ff022c ||
			target_addr == 0x1ff0240 ||
			target_addr == 0x1ff0254 ||
			target_addr == 0x1ff0268 ||
			target_addr == 0x1ff027c ||
			target_addr == 0x1ff0290 ||
			target_addr == 0x1ff02a4 ||
			target_addr == 0x1ff02b8 ||
			target_addr == 0x1ff02cc ||
			target_addr == 0x1ff02e0 ||
			target_addr == 0x1ff02f4 ||
			target_addr == 0x1ff0308 ||
			target_addr == 0x1ff031c ||
			target_addr == 0x1ff0330 ||
			target_addr == 0x1ff0344 ||
			target_addr == 0x1ff0358 ||
			target_addr == 0x1ff036c ||
			target_addr == 0x1ff0380 ||
			target_addr == 0x1ff0394 ||
			target_addr == 0x1ff03a8 ||
			target_addr == 0x1ff03bc ||
			target_addr == 0x1ff03d0 ||
			target_addr == 0x1ff03e4 ||
			target_addr == 0x1ff03f8 ||
			target_addr == 0x1ff040c ||
			target_addr == 0x1ff0420 ||
			target_addr == 0x1ff0434 ||
			target_addr == 0x1ff0448 ||
			target_addr == 0x1ff045c ||
			target_addr == 0x1ff0470 ){ // DMA buffer length
			DMA_len = value & 0x7ff;
			qemu_log_mask(LOG_GUEST_ERROR, "%s: set DMA_len to %x\n",
	                  __func__, DMA_len);
		}

		if(target_addr == 0x1ff021c ||
			target_addr == 0x1ff0230 ||
			target_addr == 0x1ff0244 ||
			target_addr == 0x1ff0258 ||
			target_addr == 0x1ff026c ||
			target_addr == 0x1ff0280 ||
			target_addr == 0x1ff0294 ||
			target_addr == 0x1ff02a8 ||
			target_addr == 0x1ff02bc ||
			target_addr == 0x1ff02d0 ||
			target_addr == 0x1ff02e4 ||
			target_addr == 0x1ff02f8 ||
			target_addr == 0x1ff030c ||
			target_addr == 0x1ff0320 ||
			target_addr == 0x1ff0334 ||
			target_addr == 0x1ff0348 ||
			target_addr == 0x1ff035c ||
			target_addr == 0x1ff0370 ||
			target_addr == 0x1ff0384 ||
			target_addr == 0x1ff0398 ||
			target_addr == 0x1ff03ac ||
			target_addr == 0x1ff03c0 ||
			target_addr == 0x1ff03d4 ||
			target_addr == 0x1ff03e8 ||
			target_addr == 0x1ff03fc ||
			target_addr == 0x1ff0410 ||
			target_addr == 0x1ff0424 ||
			target_addr == 0x1ff0438 ||
			target_addr == 0x1ff044c ||
			target_addr == 0x1ff0460 ||
			target_addr == 0x1ff0474 ||
			target_addr == 0x1ff0488 ){ // DMA buffer address
			DMA_addr = value;
			qemu_log_mask(LOG_GUEST_ERROR, "%s: set DMA_addr to %x\n",
	                  __func__, DMA_addr);
		}

		if((target_addr == 0x1ff0214 ||
			target_addr == 0x1ff0228 ||
			target_addr == 0x1ff023c ||
			target_addr == 0x1ff0250 ||
			target_addr == 0x1ff0264 ||
			target_addr == 0x1ff0278 ||
			target_addr == 0x1ff028c ||
			target_addr == 0x1ff02a0 ||
			target_addr == 0x1ff02b4 ||
			target_addr == 0x1ff02c8 ||
			target_addr == 0x1ff02dc ||
			target_addr == 0x1ff02f0 ||
			target_addr == 0x1ff0304 ||
			target_addr == 0x1ff0318 ||
			target_addr == 0x1ff032c ||
			target_addr == 0x1ff0340 ||
			target_addr == 0x1ff0354 ||
			target_addr == 0x1ff0368 ||
			target_addr == 0x1ff037c ||
			target_addr == 0x1ff0390 ||
			target_addr == 0x1ff03a4 ||
			target_addr == 0x1ff03b8 ||
			target_addr == 0x1ff03cc ||
			target_addr == 0x1ff03e0 ||
			target_addr == 0x1ff03f4 ||
			target_addr == 0x1ff0408 ||
			target_addr == 0x1ff041c ||
			target_addr == 0x1ff0430 ||
			target_addr == 0x1ff0444 ||
			target_addr == 0x1ff0458 ||
			target_addr == 0x1ff046c ||
			target_addr == 0x1ff0480) && (value != 0) && (DMA_addr < 0x1ff0000)){ // sync to device
			uint32_t read_buf;
			AddressSpace *as = &address_space_memory;
			MemTxResult res;
	        MemTxAttrs attrs = {.unspecified = 0,
	                .secure = 0,
	                .user = 0,
	                .debug = 0,
	                .requester_id = 0,
	        };
			for(uint32_t addr = DMA_addr; addr < DMA_addr+DMA_len; addr += 4){
				// read memory from qemu
				res = address_space_read(as, addr, attrs, (void*)&read_buf, 4);
				uint32_t value = plc_swap_endian(read_buf);

				// uint32_t agent_buffer[4];
			    // uint32_t option = 1; // write
			    // uint32_t size = 4;
			    // agent_buffer[0] = plc_swap_endian(option^0xcafebabe);
			    // agent_buffer[1] = plc_swap_endian(addr^0xcafebabe);
			    // agent_buffer[2] = plc_swap_endian(size^0xcafebabe);
			    // agent_buffer[3] = plc_swap_endian(value^0xcafebabe);
			    // // write to device
			    // uint32_t res = plc_swap_endian(send_to_agent((unsigned char*)agent_buffer));
			    res = tcp_send_to_agent(CMD_WRITE, addr, 4, value);
			    qemu_log_mask(LOG_GUEST_ERROR, "%s: DMA_SYNC addr=0x%x value=0x%x size=0x%x res=0x%x\n",
	                  __func__, (int)addr, (int)value, size, res);
			}
		}
	}
	if(MAC_ID == 4){
		if(target_addr == 0x3ff0204 ||
			target_addr == 0x3ff0218 ||
			target_addr == 0x3ff022c ||
			target_addr == 0x3ff0240 ||
			target_addr == 0x3ff0254 ||
			target_addr == 0x3ff0268 ||
			target_addr == 0x3ff027c ||
			target_addr == 0x3ff0290 ||
			target_addr == 0x3ff02a4 ||
			target_addr == 0x3ff02b8 ||
			target_addr == 0x3ff02cc ||
			target_addr == 0x3ff02e0 ||
			target_addr == 0x3ff02f4 ||
			target_addr == 0x3ff0308 ||
			target_addr == 0x3ff031c ||
			target_addr == 0x3ff0330 ||
			target_addr == 0x3ff0344 ||
			target_addr == 0x3ff0358 ||
			target_addr == 0x3ff036c ||
			target_addr == 0x3ff0380 ||
			target_addr == 0x3ff0394 ||
			target_addr == 0x3ff03a8 ||
			target_addr == 0x3ff03bc ||
			target_addr == 0x3ff03d0 ||
			target_addr == 0x3ff03e4 ||
			target_addr == 0x3ff03f8 ||
			target_addr == 0x3ff040c ||
			target_addr == 0x3ff0420 ||
			target_addr == 0x3ff0434 ||
			target_addr == 0x3ff0448 ||
			target_addr == 0x3ff045c ||
			target_addr == 0x3ff0470 ){ // DMA buffer length
			DMA_len = value & 0x7ff;
			qemu_log_mask(LOG_GUEST_ERROR, "%s: set DMA_len to %x\n",
	                  __func__, DMA_len);
		}

		if(target_addr == 0x3ff021c ||
			target_addr == 0x3ff0230 ||
			target_addr == 0x3ff0244 ||
			target_addr == 0x3ff0258 ||
			target_addr == 0x3ff026c ||
			target_addr == 0x3ff0280 ||
			target_addr == 0x3ff0294 ||
			target_addr == 0x3ff02a8 ||
			target_addr == 0x3ff02bc ||
			target_addr == 0x3ff02d0 ||
			target_addr == 0x3ff02e4 ||
			target_addr == 0x3ff02f8 ||
			target_addr == 0x3ff030c ||
			target_addr == 0x3ff0320 ||
			target_addr == 0x3ff0334 ||
			target_addr == 0x3ff0348 ||
			target_addr == 0x3ff035c ||
			target_addr == 0x3ff0370 ||
			target_addr == 0x3ff0384 ||
			target_addr == 0x3ff0398 ||
			target_addr == 0x3ff03ac ||
			target_addr == 0x3ff03c0 ||
			target_addr == 0x3ff03d4 ||
			target_addr == 0x3ff03e8 ||
			target_addr == 0x3ff03fc ||
			target_addr == 0x3ff0410 ||
			target_addr == 0x3ff0424 ||
			target_addr == 0x3ff0438 ||
			target_addr == 0x3ff044c ||
			target_addr == 0x3ff0460 ||
			target_addr == 0x3ff0474 ||
			target_addr == 0x3ff0488 ){ // DMA buffer address
			DMA_addr = value;
			qemu_log_mask(LOG_GUEST_ERROR, "%s: set DMA_addr to %x\n",
	                  __func__, DMA_addr);
		}

		if((target_addr == 0x3ff0214 ||
			target_addr == 0x3ff0228 ||
			target_addr == 0x3ff023c ||
			target_addr == 0x3ff0250 ||
			target_addr == 0x3ff0264 ||
			target_addr == 0x3ff0278 ||
			target_addr == 0x3ff028c ||
			target_addr == 0x3ff02a0 ||
			target_addr == 0x3ff02b4 ||
			target_addr == 0x3ff02c8 ||
			target_addr == 0x3ff02dc ||
			target_addr == 0x3ff02f0 ||
			target_addr == 0x3ff0304 ||
			target_addr == 0x3ff0318 ||
			target_addr == 0x3ff032c ||
			target_addr == 0x3ff0340 ||
			target_addr == 0x3ff0354 ||
			target_addr == 0x3ff0368 ||
			target_addr == 0x3ff037c ||
			target_addr == 0x3ff0390 ||
			target_addr == 0x3ff03a4 ||
			target_addr == 0x3ff03b8 ||
			target_addr == 0x3ff03cc ||
			target_addr == 0x3ff03e0 ||
			target_addr == 0x3ff03f4 ||
			target_addr == 0x3ff0408 ||
			target_addr == 0x3ff041c ||
			target_addr == 0x3ff0430 ||
			target_addr == 0x3ff0444 ||
			target_addr == 0x3ff0458 ||
			target_addr == 0x3ff046c ||
			target_addr == 0x3ff0480) && (value != 0) && (DMA_addr < 0x3ff0000)){ // sync to device
			uint32_t read_buf;
			AddressSpace *as = &address_space_memory;
			MemTxResult res;
	        MemTxAttrs attrs = {.unspecified = 0,
	                .secure = 0,
	                .user = 0,
	                .debug = 0,
	                .requester_id = 0,
	        };
			for(uint32_t addr = DMA_addr; addr < DMA_addr+DMA_len; addr += 4){
				// read memory from qemu
				res = address_space_read(as, addr, attrs, (void*)&read_buf, 4);
				uint32_t value = plc_swap_endian(read_buf);

				// uint32_t agent_buffer[4];
			    // uint32_t option = 1; // write
			    // uint32_t size = 4;
			    // agent_buffer[0] = plc_swap_endian(option^0xcafebabe);
			    // agent_buffer[1] = plc_swap_endian(addr^0xcafebabe);
			    // agent_buffer[2] = plc_swap_endian(size^0xcafebabe);
			    // agent_buffer[3] = plc_swap_endian(value^0xcafebabe);
			    // // write to device
			    // uint32_t res = plc_swap_endian(send_to_agent((unsigned char*)agent_buffer));
			    res = tcp_send_to_agent(CMD_WRITE, addr, 4, value);
			    qemu_log_mask(LOG_GUEST_ERROR, "%s: DMA_SYNC addr=0x%x value=0x%x size=0x%x res=0x%x\n",
	                  __func__, (int)addr, (int)value, size, res);
			}
		}
	}
    // uint32_t agent_buffer[4];

    // uint32_t option = 1;
    // agent_buffer[0] = plc_swap_endian(option^0xcafebabe);
    // agent_buffer[1] = plc_swap_endian(target_addr^0xcafebabe);
    // agent_buffer[2] = plc_swap_endian(size^0xcafebabe);
    // agent_buffer[3] = plc_swap_endian(value^0xcafebabe);

    // uint32_t res = send_to_agent((unsigned char*)agent_buffer);
    // res = plc_swap_endian(res);
    uint32_t res = tcp_send_to_agent(CMD_WRITE, target_addr, size, value);

    if (res != 0x77746f6b){
        qemu_log_mask(LOG_GUEST_ERROR,"%s: write error!", __func__);
    }
    qemu_log_mask(LOG_GUEST_ERROR, "%s: dev=MAC addr=0x%x value=0x%x size=0x%x res=0x%x\n",
                  __func__, (int)target_addr, (int)value, size, res);
}

static const MemoryRegionOps plc_mac_ops = {
	.read = plc_mac_read,
    .write = plc_mac_write,
	.endianness = DEVICE_NATIVE_ENDIAN,
};



static void plc_mac_instance_init(Object *obj)
{
	PLCmacState *s = PLC_mac(obj);

	/* allocate memory map region */
	memory_region_init_io(&s->iomem, obj, &plc_mac_ops, s, TYPE_PLC_mac, 0x10000);
	sysbus_init_mmio(SYS_BUS_DEVICE(obj), &s->iomem);

	s->chip_id = CHIP_ID;
}

/* create a new type to define the info related to our device */
static const TypeInfo plc_mac_info = {
	.name = TYPE_PLC_mac,
	.parent = TYPE_SYS_BUS_DEVICE,
	.instance_size = sizeof(PLCmacState),
	.instance_init = plc_mac_instance_init,
};

static void plc_mac_register_types(void)
{
    type_register_static(&plc_mac_info);
}

type_init(plc_mac_register_types)

/*
 * Create the PLC mac device.
*/
DeviceState *plc_mac_create(hwaddr addr)
{
	DeviceState *dev = qdev_new(TYPE_PLC_mac);
	sysbus_realize_and_unref(SYS_BUS_DEVICE(dev), &error_fatal);
	sysbus_mmio_map(SYS_BUS_DEVICE(dev), 0, addr);
	return dev;
} 
