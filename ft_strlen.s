global _ft_strlen

section .text

_ft_strlen:
xor rax, rax ;зануляем парашу
jmp loop

loop: ; while
    ;inc rax
    cmp [rsi+rax], byte 0
    je end ;if
    inc rax ;i++
    jmp loop ;возвращаемся в начало 

end:
    dec rax
    ret
