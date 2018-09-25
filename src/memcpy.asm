[BITS 64]

	section .text
	global memcpy:function

memcpy:
	mov rcx, 0
loop:
	cmp rcx, rdx
	je return
	mov bl, [rsi + rcx]
	mov [rdi + rcx], bl
	inc rcx
	jmp loop
	
return:	
	mov rax, rdi
	ret
