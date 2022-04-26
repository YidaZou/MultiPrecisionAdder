//Yida Zou
//I modified the code by getting rid of all the jump branches
//got rid of the carry variable
//used adcl instead of addl for all other additions besides the first
//changed the main equation (c = A[i] + B[i] + carry) to (c = A[0] + B[0])
//changed the return to return the carry flag.

	.file	"add-unrolled.c"
	.text
	.p2align 4,,15
	.globl	add
	.type	add, @function
add:
.LFB0:
	.cfi_startproc
	movl	(%rdi), %eax
	addl	(%rsi), %eax	//c = A[0] + B[0]
	movl	%eax, (%rdx)	//C[0] = c

.L2:
	//repeat these three lines for the rest, changing the index
	movl	4(%rdi), %eax
	adcl	4(%rsi), %eax	//c = A[1] + B[1]
	movl	%eax, 4(%rdx)	//C[1] = c

.L3:
	movl	8(%rdi), %eax
	adcl	8(%rsi), %eax
	movl	%eax, 8(%rdx)

.L4:
	movl	12(%rdi), %eax
	adcl	12(%rsi), %eax
	movl	%eax, 12(%rdx)

.L5:
	movl	16(%rdi), %eax
	adcl	16(%rsi), %eax
	movl	%eax, 16(%rdx)

.L6:
	movl	20(%rdi), %eax
	adcl	20(%rsi), %eax
	movl	%eax, 20(%rdx)

.L7:
	movl	24(%rdi), %eax
	adcl	24(%rsi), %eax
	movl	%eax, 24(%rdx)

.L8:
	movl	28(%rdi), %eax
	adcl	28(%rsi), %eax
	movl	%eax, 28(%rdx)

.L9:
	movl	32(%rdi), %eax
	adcl	32(%rsi), %eax
	movl	%eax, 32(%rdx)

.L10:
	movl	36(%rdi), %eax
	adcl	36(%rsi), %eax
	movl	%eax, 36(%rdx)

.L11:
	movl	$0, %eax		//eax = 0
	adcl	%eax, %eax	//eax = 0 + 0 + CF
	ret
	.cfi_endproc
.LFE0:
	.size	add, .-add
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-11)"
	.section	.note.GNU-stack,"",@progbits
