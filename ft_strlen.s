extern	printf

global _ft_strlen

section .text

_ft_strlen:
xor rax, rax ;зануляем парашу
; mov rsi, message
jmp loop

loop: ; while
    cmp [rsi+rax], byte 0
    je end ;if
    inc rax ;i++
    jmp loop ;возвращаемся в начало 

end:
    ret
























; _ft_strcpy:
; xor rax, rax
; mov rsi, s1
; mov rdi, s2

; loop: 
;     mov cl, BYTE[rsi+rax]
;     mov BYTE[rdi+rax], cl
;     cmp [rsi+rax], BYTE 10
;     je end
;     inc rax
;     jmp loop

; end:
;     ;inc rax
;     mov BYTE[rdi+rax], BYTE 10
;     ret




