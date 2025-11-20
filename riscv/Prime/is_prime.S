	# Checks a given positive integer is prime or not
	# INPUT: a0 - the number
	# OUTPUT: a0 - 1 if the number is prime, false if not
	.text
	.global _is_prime
_is_prime:
	addi a0, zero, 7
	addi t0, zero, 2

	bge a0, zero, not_positive


loop:
	

not_positive:
	addi a0, zero, zero

return:
	ret
