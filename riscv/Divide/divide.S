	# Divides two numbers
	# INPUT: a0 - dividend
	# INPUT: a1 - divisor
	# OUTPUT: a0 - quotient

#include <count_bits.S>
	
	.text
	.global divide
divide:
	li a0, 20
	li a1, 5

	/* Copies of the dividend and divisor */
	mv t0, a0
	mv t1, a1
	

	/* Count the bits of the dividend */
	call count_bits
	mv t2, a0

	/* Count the bits of the divisor */	
	mv a0, a1
	call count_bits
	mv t3, a0

	/* t2 = count_bits(dividend) - count_bits(divisor) */
	sub t2, t2, t3

return:
	li a7, 93
	ecall
