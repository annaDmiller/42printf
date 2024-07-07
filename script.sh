#!/bin/bash

make clean
make
make fclean
make re

clang -Wall -Wextra -Werror -c -o test.o test.c
clang -Wall -Wextra -Werror -o test_printf -L. test.o -lftprintf