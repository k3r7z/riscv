	# Checks whether the parameter is even or odd
	# INPUT: a0 - parameter
	# OUTPUT: a1 - true if the parameter is even, false if not
	.text
	.global _is_even
_is_even:
	andi t0, a0, 0b1
	bne t0, zero, odd

even:
	addi a0, zero, 1
	jal zero, return

odd:
	addi a0, zero, 0

return:
	ret
