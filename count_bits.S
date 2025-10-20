	# Counts the number of bits the number has
	# INPUT: a0 - the number to be analized
	# OUTPUT: a0 - the number of bits
	.text
	.globl _count_bits
_count_bits:
	
	/* Starts counter to 0*/
	li t0, 0

	/*
	Shifting right a0 until it's 0
	and incrementing t0
	*/
.L0:
	beq a0, zero, .L1
	srli a0, a0, 1
	addi t0, t0, 1
	j .L0

.L1:
	mv a0, t0
	ret
