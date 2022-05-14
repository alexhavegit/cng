	.file	"test.c"
	.intel_syntax noprefix
	.text
	.globl	myfunc
	.def	myfunc;	.scl	2;	.type	32;	.endef
	.seh_proc	myfunc
myfunc:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	add	eax, 1
	pop	rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "res = %d\12\0"
.LC1:
	.ascii "x = %d\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	QWORD PTR 24[rbp], rdx
	call	__main
	mov	DWORD PTR -12[rbp], 2
	mov	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -8[rbp], 0
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -4[rbp], eax
	add	DWORD PTR -8[rbp], 1
.L4:
	cmp	DWORD PTR -8[rbp], 9
	jle	.L5
	mov	ecx, 15
	call	myfunc
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	lea	rax, .LC0[rip]
	mov	rcx, rax
	call	printf
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	lea	rax, .LC1[rip]
	mov	rcx, rax
	call	printf
	mov	eax, 0
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 11.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
