





#include <stdio.h>

typedef int X;

struct S1 {
    struct S2 {
        typedef char X;
        X c;
    } s2;
    typedef short X;
    X s;
} s1;

X i;
int main()
{
    if( sizeof(i) == sizeof(int) &&
        sizeof(s1.s) == sizeof(short) &&
        sizeof(s1.s2.c) == sizeof(char) )
        printf("ok\n");
    else
        printf("ng\n");
}
