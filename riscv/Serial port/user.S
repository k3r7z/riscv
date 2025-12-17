.extern "driver.S"
	
.text
.globl main
	
main:
	li a0, 0xF0

	call send_byte

	li t0, 0x7F02
	lh t1, 0(t0)	# backup bytes

	# Send first two bytes
	li t4, 8
1:
	addi t4, t4, -1
	lb a0, 0(t1)
	call send_byte
	bnez t4, 1b

	# Send 
	li t4, 8
2:
	addi t4, t4, -1
	lb a0, 0(t2)
	call send_byte
	bnez t4, 1b

	# Send checksum
	lb a0, 0(t3)
	call send_byte
	li a0, 0xFF

	call send_byte


	li a7, 93
	ecall
