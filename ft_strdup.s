extern _malloc

global _ft_strdup

section .text

_ft_strdup:
 push rbp
        push r12
        push rbx
     mov  rdi, 16
        call _malloc

        ; check if the malloc failed
        test rax, rax
        jz   fail_exit
        mov  rbx, rax
        ret

    fail_exit:
    mov rax, 0x2000001 ;exit
    mov rdi, -1
    syscall