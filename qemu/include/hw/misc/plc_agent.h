#include "qemu/osdep.h"
#include "qapi/error.h" /* provides error_fatal() handler */
#include "hw/sysbus.h" /* provides all sysbus registering func */
#include "string.h"
#include "qemu/log.h"
#include "qemu/timer.h"
#include "hw/core/cpu.h"
#include <arpa/inet.h>
#include <unistd.h>
#include <sys/socket.h>
#include <string.h>

#define CMD_READ 0
#define CMD_WRITE 1
#define CMD_NOP 0
#define CMD_EXIT_IRQ 3
#define CMD_ASK_IRQ 2

int get_sock(void);

void send_data(const char *data, uint32_t len);

void receive_data(unsigned char *buffer, size_t size);

// send the commands to server
int tcp_send_to_agent(uint32_t option, uint32_t taget_addr, uint32_t size, uint32_t value);

int send_to_agent(unsigned char *buffer, uint8_t len, uint32_t need_recv);
uint8_t get_checksum(unsigned char *send_buffer);

uint32_t plc_swap_endian(uint32_t value);

void set_ISR_addr(uint32_t ISR_num, uint32_t ISR_addr);
uint32_t get_ISR_addr(uint32_t ISR_num);
uint32_t get_ISR_num(uint32_t ISR_addr);
