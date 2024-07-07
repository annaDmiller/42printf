int ft_printf(const char *, ...);

int main(void)
{
    int num = ft_printf("Hello, %s\n", "World!");
    ft_printf("Number of words: %i\n", num);
    return (0);
}