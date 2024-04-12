    .section .text
    .global main

main:
    STMFD   SP!, {R0-R12, LR}   


    MOV     R1, #0x10000000    
    MOV     R2, #0x0           
    MOV     R3, #0x8000        

copy_loop:
    LDR     R0, [R1], #4       
    STR     R0, [R2], #4       
    SUBS    R3, R3, #4         
    BNE     copy_loop    


    // patch undefined instruction exception handler to avoid endless loop

    
    movw r0, #0xf00e
    movt r0, #0xe1b0

    mov r1, #0x10c
    str r0, [r1]


    /* s7-1200 v4.5.2 patch frequent VIC access */
    movw r0, #0xf000
    movt r0, #0xe320

    movw r1, #0x65ec
    movt r1, #0x0000

    str r0, [r1]

    movw r1, #0x65e4
    movt r1, #0x0000

    str r0, [r1]

    movw r1, #0x67dc
    movt r1, #0x0000
    str r0, [r1]

    movw r1, #0x67e8
    movt r1, #0x0000
    str r0, [r1]


    /* patch global timer check 

    movw r0, #0x0013
    movt r0, #0xea00

    movw r1, #0x30a8
    movt r1, #0x0011
    str r0, [r1]
    */
    
    
    
    

    LDMFD   SP!, {R0-R12, PC}  
    .section .data

