global _ft_strcmp ;так скажем , это точка входа 

section .text

_ft_strcmp:
xor rdx, rdx

loop:
    mov al, [rdi+rdx]
    mov bl, [rsi+rdx]
    mov rax, 0x000004
               
    cmp al, bl
    jne ne_end
    cmp al, byte 0 
    je e_end
    inc rdx
    jmp loop

ne_end:
mov rax, rdi
ret

e_end:
mov rax, 0
ret