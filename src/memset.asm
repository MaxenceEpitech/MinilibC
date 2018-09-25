[BITS 64]

	section .text
	global memset:function

memset:
	mov rcx, 0
loop:
	cmp rcx, rdx
	je return
	mov BYTE [rdi + rcx], sil
	inc rcx
	jmp loop

return:
	mov rax, rdi
	ret

	
