NAME = fdf

CC = gcc #-Wall -Werror -Wextra

SRC = fdf.c

OBJ = $(SRC:.c=.o)

EXTRA_FLAGS = 

all: $(NAME)

$(NAME): $(OBJ)
	@echo "linkage"
	$(CC) $< -Imlx_linux -L./mlx_linux -lmlx_Linux -L/usr/lib -lXext -lX11 -lm -lz -o $(NAME)

$(OBJ): $(SRC)
	@echo "compiling objects"
	$(CC) -I/usr/include -Imlx_linux -O3 -c $< -o $@

run: all
	./$(NAME)
	
clean:	
	@rm -rf *.a *.o
	@echo "deleted .a and .o files"
