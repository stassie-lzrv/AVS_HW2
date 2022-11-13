.LC1:
	.string	"incorrect input"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-20(%rbp), %rdx		#len 
	leaq	-24(%rbp), %rax		#test
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_string
	movq	%rax, -16(%rbp)		#s from get_string
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jne	.L13
	movl	-24(%rbp), %edx		#s to task
	movq	-16(%rbp), %rax		#len to task
	movl	%edx, %esi
	movq	%rax, %rdi
	call	task
	movl	$0, %eax		#void func
	jmp	.L15
.L13:
	leaq	.LC1(%rip), %rdi	#string to func printf
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
.L15:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
