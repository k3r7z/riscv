.equ ARG, 12
.equ SYS_EXIT, 93
.equ ONE, 1
	
.text
.globl main
main:
	li a0, ARG
	li a1, ONE

	li t0, 0	# t0 = x
	li t1, 1	# t1 = y
1:
	sll t2, a1, t0	# t2 = 2^x
	sll t3, a1, t1	# t3 = 2^y

	blt t3, a0, continue

	sub t2, a0, t2
	sub t3, t3, a0

	blt t2, t3, choose_x
	blt t3, t2, choose_y
	blt t0, t1, choose_x
	j choose_x

continue:
	addi t0, t0, 1
	addi t1, t1, 1
	j 1b

choose_x:
	mv a0, t0
	j return

choose_y:
	mv a0, t1
	
return:
	li a7, SYS_EXIT
	ecall
