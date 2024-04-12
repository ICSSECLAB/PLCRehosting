    .section .text
    .global main

main:
    setend be

    // change exception vector base to 0x00000000 and set to big endian
    MRC p15, 0, R0, C1, C0, 0
    BIC R0, R0, #0x2000
    ORR R0, R0, #0x2000000
    MCR p15, 0, R0, C1, C0, 0


    /* s7-1200 bootloader v4.2.3 itcm mov */

    movw r0, #0x357b
    movt r0, #0xeb00

    movw r1, #0x3a0c
    movt r1, #0x0001
    
    str r0, [r1]
    
    /* s7-200 bootloader v2.4.1 itcm mov
    movw r0, #0x4025
    movt r0, #0xeb00

    movw r1, #0x0f64
    movt r1, #0x0001

    str r0, [r1]
    */

    /* s7-200 bootloader, skip SPI check
    movw r1, #0x0898
    movt r1, #0x0

    movw r0, #0x0009
    movt r0, #0xea00

    str r0, [r1]
    */

    /* change nand operation to emulated device */
    movw r1, #0xfff0
    movt r1, #0x83ff
    str r0, [r1]


    mov pc, #0
    .section .data

