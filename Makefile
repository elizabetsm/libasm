SRC = ft_strdup.s #ft_strcmp.s #ft_read.s #ft_write.s #ft_strlen.s # #ft_strcpy.s
OBJ = ft_strdup.o #ft_strcmp.o #ft_read.o #ft_write.o #ft_strlen.o # #ft_strcpy.o

all:
	nasm -g -f macho64 $(SRC)
	ar rcs libasm.a $(OBJ)
	ranlib libasm.a 

main:
	gcc -g -L. -lasm -o main main.c && ./main

clean:
	rm -f $(OBJ)