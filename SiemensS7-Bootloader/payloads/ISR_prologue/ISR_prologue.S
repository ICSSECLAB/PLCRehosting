// assembling raw shellcode: $arm-linux-gnueabi-as -EB -o tmp.elf stager.s && arm-linux-gnueabi-objcopy -j .text -Obinary tmp.elf stager.bin && rm tmp.elf

        .arch armv7r
.section .text
        .align  4
        .arm
        .syntax unified
_start:
        PUSH {R0-R12, lr}
        
        // call function at 0x31000 to serve rw in irq
        movw r1, #0x1000
        movt r1, #0x3
        
        blx r1

        pop {r0-r12, lr}
        SUBS    PC, LR, #4

.align 4

