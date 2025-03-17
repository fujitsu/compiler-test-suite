




#include <stdio.h>

int f(char);
int f(signed char);
int f(unsigned char);
int f(char *);
int f(signed char*);
int f(unsigned char *);
int main()
{
    char c = 'a';
    signed char sc = -1;
    unsigned char uc = 0xFF;

    if( f(c) + f(sc) + f(uc) + f(&c) + f(&sc) + f(&uc) == 6 )
    if( f(c) )
        if( f(sc) )
            if( f(uc) )
                if( f(&c) )
                    if( f(&sc) )
                        if( f(&uc) )
                            printf("ok\n");
                        else
                            printf("ng f(&uc)\n");
                    else
                        printf("ng f(&sc)\n");
                else
                    printf("ng f(&c)\n");
            else
                printf("ng f(uc)\n");
        else
            printf("ng f(sc)\n");
    else
        printf("ng f(c)\n");
}

int f(char c)
{
    return c == 0x61;
}

int f(signed char sc)
{
    return sc == (signed char)0xFF;
}

int f(unsigned char uc)
{
    return uc == 255;
}

int f(char *p)
{
    return *p == 97;
}

int f(signed char *ps)
{
    return *ps == -1;
}

int f(unsigned char *pu)
{
    return *pu == 0xFF;
}
