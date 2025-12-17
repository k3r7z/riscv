	.data
argv:	.word 30, 40, 45, 35, 70, 20, 15, 10, 5, 55, 95, 100, 80, 85, 75
argc:	.word 15

	.text
	.global _start
_start:
	la a0, argc
	lw a0, 0(a0)
	
	la a1, argv

	jal find_max

	li a7, 93
	ecall

	
find_max:
	li t0, 1
	beq a0, t0, base_case
	j recursion_case

base_case:
	ret

recursion_case:	
	addi sp, sp, -12
	sw ra, 0(sp)
	sw a0, 4(sp)
	sw a1, 8(sp)

	

	

	
	



	
