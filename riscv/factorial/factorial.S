	.data
arg:	.word 5

	.text
	.global _start
_start:
	la a0, arg
	lw a0, 0(a0)

	jal ra, factorial

	li a7, 93
	ecall

factorial:	
	addi sp, sp, -8			# Reserve memory in the stack for 2 words
	sw ra, 0(sp)			# Storing the caller address
	sw a0, 4(sp)			# Storing the current value

	li t0, 2
	blt a0, t0, base_case		# Exit condition: if a0 < 2 ? stop recursion : continue

	addi a0, a0, -1
	jal ra, factorial		# Jump to loop and save the address into ra

	# After children return

	lw t0, 4(sp)			# Restore our previous a0 (the child result is on a0)

	mul a0, a0, t0

	lw ra, 0(sp)			# Restore return address and stack
	addi sp, sp, 8
	ret

base_case:
	lw ra, 0(sp)
	addi sp, sp, 8
	li a0, 1
	ret
