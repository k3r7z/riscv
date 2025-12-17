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
	addi sp, sp, -8
	sw ra, 0(sp)
	sw a0, 4(sp)
	
	li t0, 2
	blt a0, t0, base_case

	addi a0, a0, -1
	
	jal ra, factorial

	lw t0, 4(sp)

	mul a0, t0, a0

	lw ra, 0(sp)
	addi sp, sp, 8
	ret

base_case:
	li a0, 1
	ret	
