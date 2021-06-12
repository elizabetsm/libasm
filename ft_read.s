global  _ft_read

_ft_read:
segment .text
mov rax, 0x2000003
mov rdi, rdi
mov rsi, rsi
mov rdx, rdx

syscall

ret 