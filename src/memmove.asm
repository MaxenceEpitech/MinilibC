[BITS 64]

	section .text
        global memmove:function

my_memmove:

        mov rcx, -1

loop:
        inc rcx
        mov r15b, [rsi + rcx]
        mov [rdi + rcx], r15b
        cmp rdx, rcx
        jne loop
        jmp return

return:
        mov rax, rsi
        ret
