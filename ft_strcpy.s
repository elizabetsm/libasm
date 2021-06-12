global _ft_strcpy

segment .text
_ft_strcpy:
xor rax, rax

loop:
mov cl, BYTE[rsi+rax] 
mov BYTE[rdi+rax], cl
cmp BYTE[rsi+rax], byte 0
je end 
inc rax
jmp loop

end:
mov rax, rdi
ret
