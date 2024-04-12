#include "hw/misc/plc_agent.h"
#include <unistd.h>

uint32_t ISR_addr_array[32];

void set_ISR_addr(uint32_t ISR_num, uint32_t ISR_addr){
    // qemu_log_mask(LOG_GUEST_ERROR, "set_ISR_addr: ISR_num=%d, ISR_addr=%x\n", ISR_num, ISR_addr);
    ISR_addr_array[ISR_num] = ISR_addr;
}

uint32_t get_ISR_addr(uint32_t ISR_num){
    uint32_t ISR_addr = ISR_addr_array[ISR_num];
    // qemu_log_mask(LOG_GUEST_ERROR, "get_ISR_addr: ISR_num=%d, ISR_addr=%x\n", ISR_num, ISR_addr);
    return ISR_addr;
}

uint32_t get_ISR_num(uint32_t ISR_addr){
    for(int i = 0; i < 32; i++){
        if(ISR_addr_array[i] == ISR_addr){
            return i;
        }
    }
    return -1;
}

int sock;
// 连接到服务器的函数
int get_sock(void){

    if(sock){
        // qemu_log_mask(LOG_GUEST_ERROR, "[+] agent reuse socket\n");
        return sock;
    }
    struct sockaddr_in server_addr;

    // 创建 socket
    sock = socket(AF_INET, SOCK_STREAM, 0);
    if (sock < 0) {
        qemu_log_mask(LOG_GUEST_ERROR, "[-] agent socket creation failed\n");
        return 0;
    }

    // 设置服务器地址
    memset(&server_addr, 0, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    // server_addr.sin_port = htons(10000);
    // server_addr.sin_addr.s_addr = inet_addr("127.0.0.1");
    server_addr.sin_port = htons(1238);
    server_addr.sin_addr.s_addr = inet_addr("172.16.32.141");

    // 连接到服务器
    if (connect(sock, (struct sockaddr *)&server_addr, sizeof(server_addr)) < 0) {
        qemu_log_mask(LOG_GUEST_ERROR, "[-] agent connect failed\n");
        sock = 0;
        return 0;
    }
    qemu_log_mask(LOG_GUEST_ERROR, "[+] agent connect success\n");
    return sock;
}

// 发送数据的函数
void send_data(const char *data, uint32_t len) {
    int socket = get_sock();

    if (send(socket, data, len, 0) < 0) {
        qemu_log_mask(LOG_GUEST_ERROR, "[-] agent send failed\n");
    }
}

// 接收数据的函数
void receive_data(unsigned char *buffer, size_t size) {
    int socket = get_sock();
    if (recv(socket, buffer, size, 0) < 0) {
        qemu_log_mask(LOG_GUEST_ERROR, "[-] agent recv failed\n");
    }
}

uint8_t get_checksum(unsigned char *send_buffer){
    unsigned int crc_checksum = 0;
    int len = send_buffer[0];
    for (int i = 0; i < len; i++) {
        crc_checksum += send_buffer[i];
    }
    return (uint8_t)(0x100-(crc_checksum & 0xff))&0xff;
}

uint32_t plc_swap_endian(uint32_t value) {
    return ((value & 0x000000FF) << 24) |
           ((value & 0x0000FF00) << 8)  |
           ((value & 0x00FF0000) >> 8)  |
           ((value & 0xFF000000) >> 24);
}

int tcp_send_to_agent(uint32_t option, uint32_t target_addr, uint32_t size, uint32_t value){
    unsigned char cmd_buffer[20];
    uint8_t len = 0;
    int res = 0;
    switch(option){
    case CMD_READ:
        cmd_buffer[0] = CMD_READ;
        cmd_buffer[1] = (uint8_t)size;
        *(uint32_t*)(cmd_buffer+2) = plc_swap_endian(target_addr ^ 0xcafebabe);
        len = 6;
        break;
    case CMD_WRITE:
        cmd_buffer[0] = CMD_WRITE;
        cmd_buffer[1] = (uint8_t)size;
        *(uint32_t*)(cmd_buffer+2) = plc_swap_endian(target_addr ^ 0xcafebabe);
        *(uint32_t*)(cmd_buffer+6) = plc_swap_endian(value ^ 0xcafebabe);
        len = 10;
        break;
    case CMD_EXIT_IRQ:
        cmd_buffer[0] = CMD_EXIT_IRQ;
        len = 1;
        break;
    case CMD_ASK_IRQ:
        cmd_buffer[0] = CMD_ASK_IRQ;
        len = 1;
        break;
    default:
        qemu_log_mask(LOG_GUEST_ERROR, "Error: unknown commands\n");
    }
    // int res = 0;
    if(option == CMD_WRITE){
        res = send_to_agent((unsigned char*)cmd_buffer, len, 0);
        res = 0x77746f6b; // write ok
    }else{
        res = send_to_agent((unsigned char*)cmd_buffer, len, 1);
        res = plc_swap_endian(res) ^ 0xcafebabe;
    }
    return res;
}

int send_to_agent(unsigned char *buffer, uint8_t len, uint32_t need_recv){
    uint32_t res = 0;
    unsigned char send_buffer[20];
    unsigned char recv_buffer[40];
    memset(recv_buffer, 0, sizeof(recv_buffer));
    memset(send_buffer, 0, sizeof(send_buffer));

    send_buffer[0] = len+1;
    memcpy(send_buffer+1, buffer, len);
    send_buffer[len+1] = get_checksum(send_buffer);

    qemu_log_mask(LOG_GUEST_ERROR, "[++] ");
    // 遍历数组并打印每个字节的16进制表示
    for (int i = 0; i < len+2; i++) {
        qemu_log_mask(LOG_GUEST_ERROR, "%02X ", send_buffer[i]);
    }
    qemu_log_mask(LOG_GUEST_ERROR, "\n"); // 在输出的最后打印换行符

    send_data((const char*)send_buffer, len+2);

    if(need_recv == 1){
        receive_data(recv_buffer, 30);
        qemu_log_mask(LOG_GUEST_ERROR, "[--] ");
        // 遍历数组并打印每个字节的16进制表示
        for (int i = 0; i < 4; i++) {
            qemu_log_mask(LOG_GUEST_ERROR, "%02X ", recv_buffer[i]);
        }
        qemu_log_mask(LOG_GUEST_ERROR, "\n"); // 在输出的最后打印换行符
        res = *(uint32_t*)(recv_buffer);
    }
    return res;
}

