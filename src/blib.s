	.text
	jmp L11
//	WRITES
L1:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $1,12(%ebp)
	movl 8(%ebp),%eax
	shl $2,%eax
	movzb (%eax),%eax
	movl %eax,16(%ebp)
	jmp L12
L13:
	movl 8(%ebp),%eax
	shl $2,%eax
	addl 12(%ebp),%eax
	movzb (%eax),%eax
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *56(%edi)
	incl 12(%ebp)
L12:
	movl 12(%ebp),%eax
	cmpl 16(%ebp),%eax
	jle L13
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	WRITED
L2:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	leal 28(%ebp),%eax
	shr $2,%eax
	movl %eax,16(%ebp)
	movl $0,20(%ebp)
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	cmpl $0,8(%ebp)
	jge L14
	decl 12(%ebp)
	jmp L15
L14:
	movl 8(%ebp),%eax
	negl %eax
	movl %eax,24(%ebp)
L15:
L16:
	movl 24(%ebp),%eax
	movl $10,%ecx
	cltd
	idivl %ecx
	mov %edx,%eax
	movl %eax,112(%ebp)
	movl 20(%ebp),%eax
	addl 16(%ebp),%eax
	mov %eax,%ecx
	movl 112(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 24(%ebp),%eax
	movl $10,%ecx
	cltd
	idivl %ecx
	movl %eax,24(%ebp)
	incl 20(%ebp)
	cmpl $0,24(%ebp)
	jne L16
	movl 20(%ebp),%eax
	incl %eax
	movl %eax,112(%ebp)
	movl 12(%ebp),%eax
	movl %eax,116(%ebp)
	jmp L17
L18:
	movl $32,128(%ebp)
	leal 120(%ebp),%ecx
	calll *56(%edi)
	incl 112(%ebp)
L17:
	movl 112(%ebp),%eax
	cmpl 116(%ebp),%eax
	jle L18
	cmpl $0,8(%ebp)
	jge L19
	movl $45,120(%ebp)
	leal 112(%ebp),%ecx
	calll *56(%edi)
L19:
	movl 20(%ebp),%eax
	decl %eax
	movl %eax,112(%ebp)
	jmp L20
L21:
	movl $48,124(%ebp)
	movl 112(%ebp),%eax
	addl 16(%ebp),%eax
	mov (,%eax,4),%eax
	mov %eax,%ecx
	movl 124(%ebp),%eax
	subl %ecx,%eax
	movl %eax,124(%ebp)
	leal 116(%ebp),%ecx
	calll *56(%edi)
	decl 112(%ebp)
L20:
	cmpl $0,112(%ebp)
	jge L21
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	WRITEN
L3:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 8(%ebp),%eax
	movl %eax,20(%ebp)
	movl $0,24(%ebp)
	leal 12(%ebp),%ecx
	calll *272(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	NEWLINE
L4:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $10,16(%ebp)
	leal 8(%ebp),%ecx
	calll *56(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	NEWPAGE
L5:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $12,16(%ebp)
	leal 8(%ebp),%ecx
	calll *56(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	READN
L6:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $0,8(%ebp)
	movl $0,12(%ebp)
L23:
	leal 16(%ebp),%ecx
	calll *52(%edi)
	movl %eax,284(%edi)
	jmp L25
L27:
L28:
L29:
	jmpl *L24
L30:
	movl $-1,12(%ebp)
L31:
	leal 16(%ebp),%ecx
	calll *52(%edi)
	movl %eax,284(%edi)
	jmp L26
L25:
	movl 284(%edi),%eax
	mov $L999,%edx
	mov $5,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L26
3:	jmp *4(%edx)
L26:
	jmp L33
L32:
	movl 8(%ebp),%eax
	movl $10,%ecx
	imull %ecx
	addl 284(%edi),%eax
	subl $48,%eax
	movl %eax,8(%ebp)
	leal 16(%ebp),%ecx
	calll *52(%edi)
	movl %eax,284(%edi)
L33:
	cmpl $48,284(%edi)
	jl L34
	cmpl $57,284(%edi)
	jle L32
L34:
	movl 12(%ebp),%eax
	orl %eax,%eax
	jz L35
	negl 8(%ebp)
L35:
	movl 8(%ebp),%eax
L22:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	WRITEOCT
L7:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	cmpl $1,12(%ebp)
	jle L36
	movl 8(%ebp),%eax
	movl $3,%ecx
	shrl %cl,%eax
	movl %eax,24(%ebp)
	movl 12(%ebp),%eax
	decl %eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *308(%edi)
L36:
	movl $7,%eax
	andl 8(%ebp),%eax
	addl $48,%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *56(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	WRITEHEX
L8:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	cmpl $1,12(%ebp)
	jle L37
	movl 8(%ebp),%eax
	movl $4,%ecx
	shrl %cl,%eax
	movl %eax,24(%ebp)
	movl 12(%ebp),%eax
	decl %eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *300(%edi)
L37:
	movl $15,%eax
	andl 8(%ebp),%eax
	movl $L38,%ecx
	shr $2,%ecx
	addl %ecx,%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *56(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	WRITEF
L9:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	leal 12(%ebp),%eax
	shr $2,%eax
	movl %eax,56(%ebp)
	movl $1,60(%ebp)
	movl 8(%ebp),%eax
	shl $2,%eax
	movzb (%eax),%eax
	movl %eax,64(%ebp)
	jmp L39
L40:
	movl 8(%ebp),%eax
	shl $2,%eax
	addl 60(%ebp),%eax
	movzb (%eax),%eax
	movl %eax,68(%ebp)
	cmpl $37,68(%ebp)
	jne L41
	movl $0,72(%ebp)
	movl $0,%eax
	addl 56(%ebp),%eax
	mov (,%eax,4),%eax
	movl %eax,76(%ebp)
	movl $0,80(%ebp)
	movl 8(%ebp),%eax
	movl %eax,84(%ebp)
	movl 60(%ebp),%eax
	incl %eax
	mov %eax,%ecx
	movl 84(%ebp),%eax
	shl $2,%eax
	addl %ecx,%eax
	movzb (%eax),%eax
	movl %eax,84(%ebp)
	incl 60(%ebp)
	jmp L47
L49:
	movl 84(%ebp),%eax
	movl %eax,96(%ebp)
	leal 88(%ebp),%ecx
	calll *56(%edi)
	jmp L48
L50:
	movl 240(%edi),%eax
	movl %eax,72(%ebp)
	jmpl *L44
L51:
	movl 56(%edi),%eax
	movl %eax,72(%ebp)
	jmpl *L44
L52:
	movl 308(%edi),%eax
	movl %eax,72(%ebp)
	jmpl *L46
L53:
	movl 300(%edi),%eax
	movl %eax,72(%ebp)
	jmpl *L46
L54:
	movl 272(%edi),%eax
	movl %eax,72(%ebp)
	jmpl *L46
L55:
	movl 272(%edi),%eax
	movl %eax,72(%ebp)
	jmpl *L44
L45:
	incl 60(%ebp)
	movl 8(%ebp),%eax
	shl $2,%eax
	addl 60(%ebp),%eax
	movzb (%eax),%eax
	movl %eax,96(%ebp)
	leal 88(%ebp),%ecx
	calll *368(%edi)
	movl %eax,80(%ebp)
	cmpl $48,80(%ebp)
	jl L57
	cmpl $57,80(%ebp)
	jg L57
	movl 80(%ebp),%eax
	subl $48,%eax
	jmp L56
L57:
	movl 80(%ebp),%eax
	subl $65,%eax
	addl $10,%eax
L56:
	movl %eax,80(%ebp)
L43:
	movl 76(%ebp),%eax
	movl %eax,96(%ebp)
	movl 80(%ebp),%eax
	movl %eax,100(%ebp)
	leal 88(%ebp),%ecx
	calll *72(%ebp)
	incl 56(%ebp)
	jmp L48
L47:
	movl 84(%ebp),%eax
	movl %eax,96(%ebp)
	leal 88(%ebp),%ecx
	calll *368(%edi)
	mov $L998,%edx
	mov $6,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L49
3:	jmp *4(%edx)
L48:
	jmp L42
L41:
	movl 68(%ebp),%eax
	movl %eax,80(%ebp)
	leal 72(%ebp),%ecx
	calll *56(%edi)
L42:
	incl 60(%ebp)
L39:
	movl 60(%ebp),%eax
	cmpl 64(%ebp),%eax
	jle L40
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	CAPITALCH
L10:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	cmpl $97,8(%ebp)
	jl L59
	cmpl $122,8(%ebp)
	jg L59
	movl 8(%ebp),%eax
	movl %eax,12(%ebp)
	movl $97,%eax
	subl $65,%eax
	mov %eax,%ecx
	movl 12(%ebp),%eax
	subl %ecx,%eax
	jmp L58
L59:
	movl 8(%ebp),%eax
L58:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L11:
	ret
	.data
	.align 4
L24:
	.long L23
	.align 4
L999:
	.long 32
	.long L27
	.long 9
	.long L28
	.long 10
	.long L29
	.long 45
	.long L30
	.long 43
	.long L31
	.align 4
L38:
	.long 48
	.long 49
	.long 50
	.long 51
	.long 52
	.long 53
	.long 54
	.long 55
	.long 56
	.long 57
	.long 65
	.long 66
	.long 67
	.long 68
	.long 69
	.long 70
	.align 4
L44:
	.long L43
	.align 4
L46:
	.long L45
	.align 4
L998:
	.long 83
	.long L50
	.long 67
	.long L51
	.long 79
	.long L52
	.long 88
	.long L53
	.long 73
	.long L54
	.long 78
	.long L55
	.global G60
	.equ G60,L1
	.global G68
	.equ G68,L2
	.global G62
	.equ G62,L3
	.global G63
	.equ G63,L4
	.global G64
	.equ G64,L5
	.global G70
	.equ G70,L6
	.global G77
	.equ G77,L7
	.global G75
	.equ G75,L8
	.global G76
	.equ G76,L9
	.global G92
	.equ G92,L10
	.text
