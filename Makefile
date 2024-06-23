NAME = libftprintf.a

CC = cc

C_FLAGS = -Wall -Werror -Wextra -g3 -I $(LIBFT_DIR)

RM = rm

RM_FLAGS = -rf

AR = ar

AR_OPT = rs

MAKE = make

HEADER = ./ft_printf.h

LIBFT_DIR = ./libft

NAME_LIBFT = libft.a

LIBFT_HEADER = libft.h

FILES = ft_printf.c print_hex.c

SRCS = $(FILES:c=o)

.PHONY: all clean fclean re libft

all: $(NAME)

$(NAME): comp_all $(SRCS)
	$(AR) $(AR_OPT) ftprintf.a $(SRCS)
	$(AR) crsT $(NAME) ./libft/libft.a ftprintf.a

comp_all: libft $(FILES) $(LIBFT_DIR) $(HEADER)
	$(CC) $(C_FLAGS) -L$(LIBFT_DIR) -lft -c $(FILES)

libft: $(LIBFT_DIR)
	$(MAKE) --no-print-directory -C $(LIBFT_DIR)
	$(MAKE) --no-print-directory -C $(LIBFT_DIR)

clean: $(SRCS)
	$(RM) $(RM_FLAGS) $(SRCS) $(LIBFT_DIR)/*.o

fclean: clean
	$(RM) $(RM_FLAGS) $(NAME) $(LIBFT_DIR)/$(NAME_LIBFT) libprintf.a

re: fclean all
