





#include <stdio.h>

class A {
    public:
        int a;
        int func1(void);
};

class B : public A {
    public:
        int b;
        int func2(void);
};

int A::func1(void) { return A::a; }
int B::func2(void) { return B::b; }

void func(B &bobj)
{
    if( bobj.a == 3 && bobj.func2() == 5 )
        printf("ok\n");
    else
        printf("ng\n");
}
int main()
{
    B bobj,*pb = &bobj;

    bobj.a = 3;
    pb->b = 5;

    if( bobj.func2() == 5 && pb->func1() == 3 )
        func( bobj );
    else
        printf("ng\n");
}
        
