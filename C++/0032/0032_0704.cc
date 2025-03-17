





#include <stdio.h>

int i = 1;

class A {
    public:
        static int a;
        static int funca(int i) { return a = i; }
};
int A::a;

class B : public A {
    public:
        static int b;
        static int funcb(void);
};
int B::b;

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


