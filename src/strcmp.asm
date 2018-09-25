[BITS 64]

	section .text
	global strcmp:function

strcmp:
	mov rcx, 0
loop:
	mov r8b, [rdi + rcx]
	mov r9b, [rsi + rcx]
	cmp r8b, 0
	je return
	cmp r9b, 0
	je return
	cmp r8b, r9b
	jne return
	inc rcx
	jmp loop

return:
	sub r8b, r9b
	movsx rax, r8b
	ret
