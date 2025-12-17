.text
.globl send_byte
send_byte:
	# a0 = byte to send
	# t0 = port data address is on 0x7F02
	# t1 = bit counter
	# t2 = current data bit
	# t3 = clock bit

	li t0, 0x7F02
	li t1, 8
	li t3, 0

1:
	beqz t1, return		# if t1 == 0, stop loop
	
	andi t2, a0, 1		# get the first bit and store it into the 
	sb t2, 0(t0)		# port address
	
	li t3, 1		# set the clock signal high and store it
	sb t3, 1(t0)		# into the port address

	li t4, 1000
2:
	addi t4, t4, -1
	bnez t4, 2b
	
	li t3, 0		# get the clock signal back to 0
	sb t3, 1(t0)
	
	srli a0, a0, 1
	addi t1, t1, -1
	j 1b


return:
	li a0, 0
	li a7, 93
	ecall
