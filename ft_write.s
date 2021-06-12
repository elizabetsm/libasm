global _ft_write


_ft_write:
segment .text
mov rax, 0x2000004 ;write
mov rdi, rdi ;write to sdtout
mov rsi, rsi
mov rdx, rdx
syscall

ret
; mov rax, 0x2000001 ;exit
; mov rdi, 0
; syscall
        