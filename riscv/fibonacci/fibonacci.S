
	.data
arg:	.word 5

	.text
	.global _start

_start:
	la a0, arg
	lw a0, 0(a0)

	li a0, 0
	li a1, 1

	jal ra, fibonacci

	li a7, 93
	ecall


fibonacci:
	addi sp, sp, -12
	sw ra, 0(sp)
	sw a0, 4(sp)
	sw a1, 8(sp)

	beqz a1, base_case

	mv a0, a1
	add

	jal fibonacci

	lw ra, 0(sp)
	lw a0, 4(sp)
	lw a1, 8(sp)

base_case:
	li a1, 
	
	
	

	
