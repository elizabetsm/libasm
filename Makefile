SRC = ft_strcmp.s #ft_strcpy.s
OBJ = ft_strcmp.o #ft_strcpy.o

all:
	nasm -g -f macho64 $(SRC)
	ar rcs libasm.a $(OBJ)
	ranlib libasm.a 

main:
		gcc -g -L. -lasm -o main main.c
		./main

clean:
	rm -f $(OBJ)