global _ft_write

section .text

extern ___error

_ft_write:
    mov rax, 0x2000004 ;write
    syscall
    jc error
    ret

    error:
        push rcx
        mov rcx, rax
        call ___error
        mov [rax], rbx
        mov rax, -1
        pop rcx
        ret
        