
#include <stdio.h>

class A;
struct B;
union C;

class A {
        int a;
    public:
        void f( int i ) { a = i; }
        friend int func(A *, B *, C *);
};

struct B {
        int b;
    public:
        friend int func(A *, B *, C *);
};

union C {
        int c;
    public:
        friend int func(A *, B *, C *);
};

int func(A *aobj, B *bobj, C *cobj)
{
    return aobj->a + bobj->b + cobj->c;
} 
int main()
{
    A aobj;
    B bobj;
    C cobj;

    aobj.f(1);
    bobj.b = 2;
    cobj.c = 3;

    if( func(&aobj, &bobj, &cobj) == 6 )
        printf("ok\n");
    else
        printf("ng\n");
}
