[BITS 64]

	section .text
	global strlen:function

strlen:
	mov rcx, 0

loop:
	cmp BYTE [rdi + rcx], 0
	je return
	inc rcx
	jmp loop

return:
	mov rax, rcx
	ret
