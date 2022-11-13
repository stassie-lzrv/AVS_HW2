	.file	"5.c"
	.text
	.globl	get_string
	.type	get_string, @function
get_string:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	pushq	%rbx 			#char c
	pushq	%r15			#*test
	pushq	%r14			#char *s
	pushq	%r13			#capacit 
	pushq	%r12			#*len
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %r12		#go to func int *len
	movq	%rsi, %r15		#go to func int *test
	movq	%r12, %rax
	movl	$0, (%rax)		#*len = 0
	movq	%r15, %rax
	movl	$0, (%rax)		#*test = 0
	movq	$1, %r13
	movl	$1, %edi		#capacit = 1
	call	malloc@PLT
	movq	%rax, %r14		#char *s
	call	getchar@PLT
	movb	%al, %bl		#char c 
	jmp	.L2
.L4:
	movq	%r12, %rax
	movl	(%rax), %eax
	leal	1(%rax), %ecx
	movq	%r12, %rdx
	movl	%ecx, (%rdx)
	movslq	%eax, %rdx
	movq	%r14, %rax
	addq	%rax, %rdx
	movzbl	%bl, %eax
	movb	%al, (%rdx)
	movq	%r12, %rax
	movl	(%rax), %eax
	cmpq	%rax, %r13
	jg	.L3
	salq	%r13
	movq	%r13, %rax
	movslq	%eax, %rdx
	movq	%r14, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, %r14
.L3:
	call	getchar@PLT
	movb	%al, %bl
.L2:
	cmpb	$10, %bl
	jne	.L4
	movq	%r12, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	%r14, %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	%r14, %rax		#return s
	movq 	%rbp, %rsp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	get_string, .-get_string
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	task
	.type	task, @function
task:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %r12			#*s
	movq	%rsi, %r13		#len 
	movq	$0, %r14			#int i = 0
	jmp	.L7
.L11:
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$66, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$67, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$68, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$70, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$71, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$72, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$74, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$75, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$76, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$77, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$78, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$80, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$82, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$83, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$84, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$86, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$87, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$88, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$90, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$98, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$99, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$100, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$102, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$103, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$104, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$106, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$107, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$108, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$109, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$110, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$112, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$114, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$115, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$116, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$118, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$119, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$120, %al
	je	.L8
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$122, %al
	jne	.L9
.L8:
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L10
.L9:
	movq	%r14, %rax
	movslq	%eax, %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
.L10:
	addq	$1, %r14
.L7:
	movq	%r14, %rax			#void func
	cmpq	%r13, %rax
	jl	.L11
	nop
	movq	%rbp, %rsp
	popq	%rbx
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	task, .-task
	.section	.rodata
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
