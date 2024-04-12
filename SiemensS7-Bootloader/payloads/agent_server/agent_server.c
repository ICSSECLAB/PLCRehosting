#include <stdbool.h>
#include <stdint.h>

#include "../lib/print.h"
#include "../lib/read.h"
#include "../lib/stdlib.h"

#define WATCHDOG_EXCITE_MANUL do {*((unsigned int *)0xFFFBB120) = 0x967EA5C3;} while (0)
#define CMD_READ 0
#define CMD_WRITE 1
#define CMD_NOP 0
#define CMD_EXIT_IRQ 3
#define CMD_ASK_IRQ 2

int doit() __attribute__((noinline));
int main();
void clean_dcache_by_mva(uint32_t address);
void invalidate_icache();
void invalidate_dcache();

int _start(unsigned char *read_buf, unsigned char *write_buf) {

    // save context
    __asm__("stmfd sp!, {r0-r12, lr}");
    __asm__("adr r9, _start");

    // change to system mode
    __asm__("MRS r0, cpsr");
    __asm__("bic r0, r0, #0x1f");
    __asm__("orr r0, r0, #0x1f");
    __asm__("MSR cpsr_c, r0");
    __asm__("nop");
    __asm__("nop");

    
    doit();
    __asm__("ldmfd sp!, {r0-r12, lr}");
    
    // write_buf[0] = 0
    __asm__("mov r0, #0");
    __asm__("strb r0, [r1]");

    return 0;
}

int doit() {
    WATCHDOG_EXCITE_MANUL;
    main();
    return 0;
}

char greeting[] = "Welcome to S7 Agent server!";

int main()
{   
    __asm__("cpsid i");

    // patch irq handler vector, move to 0x30000
    uint32_t irq_addr = 0x18;
    *(uint32_t*)irq_addr = 0xe59ff004;

    uint32_t ISR_addr = 0x24;
    *(uint32_t*)ISR_addr = 0x30000;

    uint32_t irq_1_count_addr = 0x32000;
    *(uint32_t*)irq_1_count_addr = 0;

    uint32_t* ISR_addr_array = (uint32_t*)0x33000;
    memset(ISR_addr_array, 0, 32*4);

    /* for s7-200 bootloader 2.4.1, nop this instructions to avoid timer access when sending packets
    if not, the firmware access to timer will conflict with packet sender

    *(uint32_t*)0xb1dc = 0xe320f000;
    for(uint32_t i = 0xb1e4; i <= 0xb1f4; i += 4){
        *(uint32_t*)i = 0xe320f000;
    }

    for(uint32_t i = 0xb1fc; i <= 0xb218; i += 4){
        *(uint32_t*)i = 0xe320f000;
    }

    for(uint32_t i = 0xb250; i <= 0xb284; i += 4){
        *(uint32_t*)i = 0xe320f000;
    }

    for(uint32_t i = 0xb2c8; i <= 0xb2e0; i += 4){
        *(uint32_t*)i = 0xe320f000;
    }

    for(uint32_t i = 0xb2e8; i <= 0xb2fc; i += 4){
        *(uint32_t*)i = 0xe320f000;
    }
    *(uint32_t*)0xb304 = 0xe320f000;


    *(uint32_t*)0xb1e0 = 0xe320f000;
    *(uint32_t*)0xb1f8 = 0xe320f000;
    */
    

    clean_dcache_by_mva(irq_addr);
    clean_dcache_by_mva(ISR_addr);
    clean_dcache_by_mva(irq_1_count_addr);
    invalidate_icache();  

    // set the send and recv buf to unused mem to avoid stack overflow
    unsigned char* recv_buf = (unsigned char*)0x41000;
    memset(recv_buf, 0, 0x20);
    unsigned char* send_buf = (unsigned char*)0x42000;
    memset(send_buf, 0, 0x20);

    // for s7-200 don't send this greeting
    memcpy(send_buf, greeting, sizeof(greeting));
    UART_protocol_send_single((const char*)send_buf, sizeof(greeting));
    // *(uint32_t*)0xfffbb0ac = 0;
    // *(uint32_t*)0xfffbb0a4 = 500000;
    // *(uint32_t*)0xfffbb0a8 = 25;
    // while(!*(uint32_t*)0xfffbb0ac){
    //     WATCHDOG_EXCITE_MANUL;
    //     __asm__("push{r0,r1}");
    //     __asm__("movw r1, #0x9024");
    //     __asm__("movt r1, #0xfffb");
    //     __asm__("ldr r0, [r1]");
    //     __asm__("pop{r0,r1}");
    //     count++;
    // }
    // *(uint32_t*)send_buf = count;
    // UART_protocol_send_single((const char*)send_buf, 4);
    // main loop
    do{
        __asm__("cpsid i");
        memset(recv_buf, 0, 0x20);
        memset(send_buf, 0, 0x20);
        WATCHDOG_EXCITE_MANUL;
        // s7-200
        // int len = UART_protocol_recv_chunk_200((void*)recv_buf);

        // s7-1200
        int len = UART_protocol_recv_chunk((void*)recv_buf, 16);
        uint8_t option = recv_buf[0];

        if (option == CMD_READ){ // read
            invalidate_dcache(); // invalidate data cache 
            uint8_t size = recv_buf[1];
            uint32_t tar_addr = (*(uint32_t *)(recv_buf + 2)) ^ 0xcafebabe;
            if (size == 0x4){
                *(uint32_t *) send_buf = *(uint32_t *) tar_addr;
            }else if(size == 0x2){
                *(uint16_t *) (send_buf+2) = *(uint16_t *) tar_addr;
            }else if (size == 0x1){
                *(uint8_t *) (send_buf+3) = *(uint8_t *) tar_addr;
            }
            *(uint32_t *) send_buf ^= 0xcafebabe;

        }else if(option == CMD_WRITE){ // write
            uint8_t size = recv_buf[1];
            uint32_t tar_addr = (*(uint32_t *)(recv_buf + 2)) ^ 0xcafebabe;
            uint32_t value = (*(uint32_t *)(recv_buf + 6)) ^ 0xcafebabe;
            if (size == 0x4){
                *(uint32_t *) tar_addr = value;
            }else if (size == 0x2){
                *(uint16_t *) tar_addr = (uint16_t)value;
            }else if (size == 0x1){
                *(uint8_t *) tar_addr = (uint8_t)value;
            }

            if(tar_addr >= 0 && tar_addr <= 0x8000000){ // DMA write flush
                clean_dcache_by_mva(tar_addr);
            }

            if(tar_addr >= 0xfffffd80 && tar_addr <= 0xfffffe00){ // set VIC ISR address
                uint32_t ISR_num = (tar_addr - 0xfffffd80) / 4;
                ISR_addr_array[ISR_num] = value; // save the ISR addr
            }
            // write no reply
            continue;

        }else if(option == CMD_ASK_IRQ){ // qemu ask for interrupts
            // allow interrupts to happen
            __asm__("cpsie i");
            __asm__("nop");
            __asm__("nop");
            __asm__("nop");
            __asm__("cpsid i");
            // no interrupts or all interrupts are taken
            *(uint32_t *) send_buf = 0xcafebabe;
            
        }
        else
        {
            *(uint32_t *) send_buf = 0x69766c64; // invalid option
        }
        UART_protocol_send_single_fast((const char*)send_buf, 4);

        // for s7-200 after send a packet, need to quickly recv one for echo packet
        // UART_protocol_send_single_200((void*)send_buf, 4);
        // UART_protocol_recv_chunk_200((void*)recv_buf);
    } while (1);

    WATCHDOG_EXCITE_MANUL;
    return 0;
}

void clean_dcache_by_mva(uint32_t address)
{
    /* this function takes a MVA parameter */
    __asm__(
        "dsb\n"
        "mcr p15, 0, %[addr], c7, c11, 1\n"
        "dsb\n" 
        :
        : [addr] "r" (address & 0xFFFFFFF0)
        );
}

void invalidate_dcache(){
    __asm__(
        "mcr p15, 0, %[zero], c15, c5, 0\n"
            "dsb\n"
            "isb\n"  :: [zero] "r" (0)
    );
}

void invalidate_icache(){
    __asm__(
        "mcr p15, 0, %[zero], c7, c5, 0\n"
            "dsb\n"
            "isb\n"  :: [zero] "r" (0)
    );
    
}