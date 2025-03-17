





#include <stdio.h>

typedef int X;

struct S {
    struct X { int i; };
    X a,b;
};

X i=0;
int main()
{
    X i;
    S sobj;

    sobj.b.i = 1;
    sobj.a = sobj.b;
    i = sobj.a.i;
    ::i = i;

    if( ::i == 1 )
        printf("ok\n");
    else
        printf("ng\n");
}
    
