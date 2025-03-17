





#include <stdio.h>

int i = 1;

struct A {
    public:
        int a;
        int funca(int i) { return a = i; }
};

struct B : public A {
    public:
        int b;
        int funcb(void);
};

int B::funcb(void)
{
    int ii;

    ii = i;
    ii += funca(3);
    return b = ii;
}
int main()
{
    B bobj;
    int x;

    x = bobj.funcb();

    if( bobj.a == 3 && bobj.b == 4 && x ==4 )
        printf("ok\n");
    else
        printf("ng\n");
}


