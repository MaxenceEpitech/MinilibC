[BITS 64]

	section .text
        global strncmp:function

strncmp:
        mov rcx, 0

loop:
        mov al, [rdi + rcx]
        mov bl, [rsi + rcx]
        cmp al, 0
        je end
        cmp al, bl
        jne end
        inc rcx
        cmp rcx, rdx
        je end
        jmp loop

end:
        sub al, bl
        movsx rax, al
        ret
