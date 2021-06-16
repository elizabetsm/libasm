extern _malloc

global _ft_strdup

section .text
extern _ft_strlen
extern _ft_strcpy
extern _malloc 

_ft_strdup:
   xor rax, rax
   cmp rdi, 0
   je end
   jmp duplicate

   duplicate:
   sub rsp, 16 
      push rdi
      call _ft_strlen
      inc rax
      mov rdi, rax
      push rdi
      call _malloc
      call _ft_strcpy
      pop rdi
      mov rax, rdi


end:
   ret
