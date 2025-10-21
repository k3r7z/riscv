	# Sums all elements within a given array
	# INPUT: a0 - array pointer
	# INPUT: a1 - array length
	# OUTPUT: a0 - the sum
	.text
	.global sum_array
sum_array:
	/* initialize index */
	li t0, 0
	
	/* Load array's pointer */
	mv t1, a0

	/* Initialize sum */
	li a0, 0

.L1:
	/* exit when i == size */
	beq t0, a1, return
	
	/* Calculate the offset, t2 = base + 4 * i */
	slli t2, t0, 2

	/* t3 = a1[t2] */
	lw t3, 0(t2)

	/* Update sum */
	add a0, a0, t3

	/* Update index and repeat loop */
	addi t0, t0, 1
	j L1

.return:
	ret
