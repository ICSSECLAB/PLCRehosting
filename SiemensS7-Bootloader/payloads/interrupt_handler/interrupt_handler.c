#include <stdbool.h>
#include <stdint.h>

#include "../lib/print.h"
#include "../lib/read.h"
#include "../lib/stdlib.h"

#ifndef WATCHDOG_EXCITE
#define WATCHDOG_EXCITE do {*((unsigned int *)0xFFFBB120) = 0x967EA5C3;} while (0)
#endif

#define CMD_READ 0
#define CMD_WRITE 1
#define CMD_NOP 0
#define CMD_EXIT_IRQ 3
#define CMD_ASK_IRQ 2

void clean_dcache_by_mva(uint32_t address);
void invalidate_icache();
void invalidate_dcache();

int _start() {

    __asm__("adr r9, _start");

    // read this interrupt's ISR address
    uint32_t* this_int = (uint32_t*)0xfffffc00;
    uint32_t isr_addr = *this_int;

    // global counter for ISR No.1
    uint32_t* irq_1_count_addr = (uint32_t*)0x32000;
    uint32_t irq_1_count = *irq_1_count_addr;

    uint32_t* ISR_addr_array = (uint32_t*)0x33000;
    uint32_t ISR_num = 80;

    for(int i = 0; i < 32; i++){
        if(ISR_addr_array[i] == isr_addr){
            ISR_num = i;
            break;
        }
    }

    if (ISR_num == 1){
        if(irq_1_count % 0x20000000 != 0){
            // // take 0x6ae4 per 0x200 times interrupt
            uint32_t* timers = (uint32_t*)0xfffbb10c;
            uint32_t* int_finish = (uint32_t*)0xfffffc88;
            // do same op in this interrupt
            *timers = 0;
            // finish this interrupt
            *int_finish = 2;
            *irq_1_count_addr = irq_1_count + 1;
            return 0;
        }
        *irq_1_count_addr = irq_1_count + 1;
    }
    unsigned char recv_buf[0x20];
    unsigned char send_buf[0x20];
    memset(recv_buf, 0, 0x20);
    memset(send_buf, 0, 0x20);
    *(uint32_t *) send_buf = isr_addr ^ 0xcafebabe;

    // s7-1200
    UART_protocol_send_single_fast((const char*)send_buf, 4);

    // s7-200
    // UART_protocol_send_single_200((void*)send_buf, 4);
    // UART_protocol_recv_chunk_200((void*)recv_buf);
    do{
        memset(recv_buf, 0, 0x20);
        memset(send_buf, 0, 0x20);
        WATCHDOG_EXCITE;

        // s7-1200
        UART_protocol_recv_chunk((void*)recv_buf, 16);

        // s7-200
        // int res = UART_protocol_recv_chunk_200((void*)recv_buf);
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

            if(tar_addr>=0 && tar_addr<=0x8000000){ // DMA write flush
                clean_dcache_by_mva(tar_addr);
            }
            continue;
        }else if(option == CMD_ASK_IRQ){ // cpsie ask for interrupts
            // allow interrupts to happen
            __asm__("push {lr}");
            __asm__("cpsie i");
            __asm__("nop");
            __asm__("nop");
            __asm__("nop");
            __asm__("cpsid i");
            __asm__("pop {lr}");
            *(uint32_t *) send_buf = 0xcafebabe;

        }else if(option == CMD_EXIT_IRQ){ // time to return from this interrupt
            return 0;
        }else{
            *(uint32_t *) send_buf = 0x69766c64;
        }
        // s7-1200
        UART_protocol_send_single_fast((const char*)send_buf, 4);

        // s7-200
        // UART_protocol_send_single_200((void*)send_buf, 4);
        // UART_protocol_recv_chunk_200((void*)recv_buf);
        
    } while (1);
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