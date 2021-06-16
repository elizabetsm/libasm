global _ft_strcmp ;так скажем , это точка входа 

section .text

_ft_strcmp:

xor rax, rax
firstcheck:
    cmp rdi, byte 0
    je nullcheck
    jmp comparing

nullcheck:
    cmp rdi, rsi
    je equals
    jmp notequals

comparing:
    xor rcx, rcx
    mov rcx, [rdi+rax]
    cmp rcx, [rsi+rax]
    jne notequals
    inc rax
    cmp rcx, byte 0
    je checkendofline
    cmp rcx, byte 0
    je checkendofline
    jmp comparing

checkendofline:
    xor rcx, rdx
    mov rcx, [rdi+rax]
    cmp rcx, [rsi+rax]
    jne notequals
    jmp equals

equals:
    mov rax, 0
    ret

notequals:
    xor rcx, rdx
    mov rcx, [rdi+rax]
    sub rcx, [rsi + rax]
    cmp rcx, 0
    jl less
    jmp greater
    

greater:
    mov rax, 1
    ret

less:
    mov rax, -1
    ret
