[BITS 64]

	section .text
	global strchr:function

strchr:
loop:
	cmp BYTE [rdi], 0
	je dont_exist
	cmp BYTE [rdi], sil
	je exist
	inc rdi
	jmp loop

dont_exist:
	mov rax, 0
	ret

exist:
	mov rax, rdi
	ret
