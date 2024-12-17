NAME		=	main

SRCS		=	./src/main.c
OBJS		=	$(SRCS:.c=.o)

CC			=	cc
CFLAGS		=	-Wall -Wextra -Werror
RM			=	rm -f

LIBFT_DIR	=	./libft
LIBFT_NAME	=	libft.a
LIBFT		=   $(LIBFT_DIR)/$(LIBFT_NAME)

TEST_NAME	=	test

all:		$(LIBFT) $(NAME)
			$(CC) $(CFLAGS) $(OBJS) $(LIBFT) -o $(NAME)

$(LIBFT):
			# make -C $(LIBFT_DIR)

$(NAME):	$(OBJS)	
			ar rc $(NAME) $(OBJS)

clean:
			$(RM) $(OBJS)
			# make -C $(LIBFT_DIR) clean

fclean:		clean
			$(RM) $(NAME) $(TEST_NAME)
			# make -C $(LIBFT_DIR) fclean

re:			fclean all
			# make -C $(LIBFT_DIR) re

.phony:		all clean fclean re
			# make -C $(LIBFT_DIR) all clean fclean re
