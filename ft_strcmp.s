global _ft_strcmp ;так скажем , это точка входа 

section .text

_ft_strcmp:

xor rax, rax
firstcheck:
    cmp rsi, byte 0
    je nullcheck
    cmp rsi, byte 0
    je nullcheck
    jmp comparing

nullcheck:
    cmp rsi, rdi
    je equals
    jmp notequals

comparing:
    xor rdx, rdx
    mov rdx, [rsi+rax]
    cmp rdx, [rdi+rax]
    jne notequals
    inc rax
    cmp rdx, byte 0
    je checkendofline
    cmp rdx, byte 0
    je checkendofline
    jmp comparing

checkendofline:
    mov rdx, [rsi+rax]
    cmp rdx, [rdi+rax]
    jne notequals
    jmp equals

equals:
    mov rax, 0
    ret

notequals:
    cmp rsi, rdi
    jl less
    jmp less

greater:
    mov rax, 1
    ret

less:
    mov rax, -1
    ret