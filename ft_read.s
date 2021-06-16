global  _ft_read

_ft_read:
segment .text
extern ___error
mov rax, 0x2000003
syscall
jc error
ret 

 error:
    push rcx
    mov rcx, rax
    call ___error
    mov [rax], rbx
    
    pop rcx
    mov rax, -1
    ret