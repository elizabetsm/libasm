NAME = libasm.a

SRC = ft_strdup.s \
ft_strcmp.s \
ft_read.s \
ft_write.s \
ft_strlen.s \
ft_strcpy.s

OBJ = $(SRC:.s=.o)

FLAGS = -g -f macho64

%.o: %.s
	nasm $(FLAGS) $<


all: $(NAME)
	
$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

test:
	gcc -g -L. -lasm main.c
	./a.out
	