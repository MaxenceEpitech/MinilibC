##
## EPITECH PROJECT, 2018
## MinilibC
## File description:
## Makefile
##

NAME		=	libasm.so

DIR		=	./src

SRCS		=	$(DIR)/memcpy.asm		\
			$(DIR)/memset.asm		\
			$(DIR)/memmove.asm		\
			$(DIR)/strchr.asm		\
			$(DIR)/strcmp.asm		\
			$(DIR)/strlen.asm		\
			$(DIR)/strncmp.asm		\
			$(DIR)/strstr.asm

ASMFLAGS	=	-f elf64

LDFLAGS		=	-shared

ASM		=	nasm

CC		=	ld

RM		=	rm -f

OBJS		=	$(SRCS:.asm=.o)

%.o: 		%.asm
		$(ASM) -o $@ $< $(ASMFLAGS)

all:		$(NAME)

$(NAME):	$(OBJS)
		$(CC) $(LDFLAGS) -o $(NAME) $(OBJS)

clean:
		$(RM) $(OBJS)

fclean:		clean
		$(RM) $(NAME)

re:		fclean all
		$(RM) $(OBJS)

.PHONY: all clean fclean re
