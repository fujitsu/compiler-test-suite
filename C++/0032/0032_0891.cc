





#include <stdio.h>

class A {
    public:
        int a1;
        int a2;
};

struct B {
    public:
        int b1;
        int b2;
};

union C {
    public:
        int c1;
        int c2;
};

A g_aobj = { 1, 2 };
B g_bobj = { 10, 20 };
C g_cobj = { 100 };
int main()
{
    A i_aobj = { 3, 4 };
    B i_bobj = { 30, 40 };
    C i_cobj = { 300 };

    if( g_aobj.a1 == 1 && g_aobj.a2 == 2 &&
        i_aobj.a1 == 3 && i_aobj.a2 == 4 &&
        g_bobj.b1 == 10 && g_bobj.b2 == 20 &&
        i_bobj.b1 == 30 && i_bobj.b2 == 40 &&
        g_cobj.c1 == 100 && g_cobj.c2 == 100 &&
        i_cobj.c1 == 300 && i_cobj.c2 == 300 )
        printf("ok\n");
    else
        printf("ng\n");
}




