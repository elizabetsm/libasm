global _ft_strcpy

segment .text
_ft_strcpy:
xor rax, rax

mov rsi, src
mov rdi, dst

loop:
mov cl, BYTE[rsi+rax] 
mov BYTE[rdi+rax], cl
;inc rsi
;inc rdi
cmp cl, 0xA
je end 
inc rax
jmp loop

end:
mov [rdi+rax], BYTE 0
mov rax, 0x2000004 ;write
mov rdi, 1 ;write to sdtout
mov rsi, dst
mov rdx, src.len
syscall
mov rax, 0x2000001 ;exit
mov rdi, 0
syscall
ret

segment .data
src: db "Hello", 10
.len: equ $ - src
dst: db "", 10
