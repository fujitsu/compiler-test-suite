





#include <stdio.h>

struct A {
    public:
        int a;
        int (*b)(A &);
        int f() { a = 0; return a; }
        int f(int i) { a = i; return a; }
        friend int g(A &);
};

int g(A &aobj)
{
    if( aobj.f() == 0 && aobj.f(10) == 10 )
        return 1;
    else
        return 0;
 }

struct B {
    private:
        int a;
        int b();
    public:
        int f() { return b(); }
        int g;
        int h() { a = 0; g = a; return g; }
        int h(int i) { a = g = i; return g; }
};

int B::b()
{
    if( h() == 0 && h(5) == 5 )
        return 1;
    else
        return 0;
}
             
struct C : public A, public B { };
int main()
{
    C cobj;

    cobj.A::b = g;

    if( cobj.A::b(cobj) && cobj.B::f() )
        printf("ok\n");
    else
        printf("ng\n");
}
