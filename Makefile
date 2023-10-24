NAME = libftprintf.a

SOURCES = ft_printf.c ft_putchar.c ft_putstr.c ft_dec.c ft_hex.c
			
LIB = ar rcs

OBJ = $(SOURCES:.c=.o)

CC = gcc

CFLAGS = -Wall -Werror -Wextra

RM = rm -f

all: $(NAME)

$(NAME): $(OBJ)
	$(LIB) $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
