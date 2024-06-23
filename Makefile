NAME = libftprintf.a

CC = cc

C_FLAGS = -Wall -Werror -Wextra -g3

RM = rm

RM_FLAGS = -rf

AR = ar

AR_OPT = rcs

MAKE = make

HEADER = ./ft_printf.h

LIBFT_DIR = ./libft

NAME_LIBFT = libft.a

LIBFT_HEADER = libft.h

FILES = ft_printf.c print_hex.c

SRCS = $(FILES:.c=.o)

.PHONY: all clean fclean re libft

all: $(NAME)

$(NAME): comp_all $(SRCS)
	$(AR) $(AR_OPT) ftprintf.a $(SRCS)
	$(AR) $(AR_OPT)T $(NAME) ./libft/libft.a ftprintf.a

comp_all: libft $(FILES) $(HEADER)
	$(CC) $(C_FLAGS) -c $(FILES)

libft: $(LIBFT_DIR)
	$(MAKE) --no-print-directory -C $(LIBFT_DIR) all bonus

clean: $(SRCS)
	$(MAKE) --no-print-directory -C $(LIBFT_DIR) clean
	$(RM) $(RM_FLAGS) $(SRCS)

fclean: clean
		$(MAKE) --no-print-directory -C $(LIBFT_DIR) fclean
	$(RM) $(RM_FLAGS) $(NAME) ftprintf.a

re: fclean all
