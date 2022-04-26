	.file	"add.c"
	.text
	.p2align 4,,15
	.globl	add
	.type	add, @function
add:
.LFB0:
	.cfi_startproc
	movl	(%rdi), %eax
	addl	(%rsi), %eax
	movl	%eax, (%rdx)
	movl	4(%rdi), %eax
	addl	4(%rsi), %eax
	movl	%eax, 4(%rdx)
	movl	8(%rdi), %eax
	addl	8(%rsi), %eax
	movl	%eax, 8(%rdx)
	movl	12(%rdi), %eax
	addl	12(%rsi), %eax
	movl	%eax, 12(%rdx)
	movl	16(%rdi), %eax
	addl	16(%rsi), %eax
	movl	%eax, 16(%rdx)
	movl	20(%rdi), %eax
	addl	20(%rsi), %eax
	movl	%eax, 20(%rdx)
	movl	24(%rdi), %eax
	addl	24(%rsi), %eax
	movl	%eax, 24(%rdx)
	movl	28(%rdi), %eax
	addl	28(%rsi), %eax
	movl	%eax, 28(%rdx)
	movl	32(%rdi), %eax
	addl	32(%rsi), %eax
	movl	%eax, 32(%rdx)
	movl	36(%rdi), %eax
	addl	36(%rsi), %eax
	movl	%eax, 36(%rdx)
	ret
	.cfi_endproc
.LFE0:
	.size	add, .-add
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
