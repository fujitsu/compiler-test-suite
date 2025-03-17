





#include <stdio.h>

struct A {
    private:
        int a;
    public:
        A(int i) : a(i) { }
        int f() { return a; }
};

struct B : public A {
    private:
        int b;
    public:
        B(int i) : b(i), A(i+1) { }
        int f() { return b; }
};

struct C : public B {
    private:
        int c;
    public:
        C(int i) : c(i), B(i+1) { }
        int f() { return c; }
};

struct D : public C {
    private:
        int d;
    public:
        D(int i) : d(i), C(i+1) { }
        int f() { return d; }
};

struct E : public D {
    private:
        int e;
    public:
        E(int i) : e(i), D(i+1) { }
        int f() { return e; }
};
int main()
{
    int i = 0;

    A aobj(1);
    B bobj = B(1);
    C cobj = 1;
    D dobj = D(1);
    E eobj(1);

    if( aobj.f() == 1 ) i++;

    if( bobj.f() == 1 && bobj.A::f() == 2 ) i++;

    if( cobj.f() == 1 && cobj.B::f() == 2 && cobj.A::f() == 3 ) i++;

    if( dobj.f() == 1 && dobj.C::f() == 2 && dobj.B::f() == 3 &&
        dobj.A::f() == 4 )
        i++;

    if( eobj.f() == 1 && eobj.D::f() == 2 && eobj.C::f() == 3 &&
        eobj.B::f() == 4 && eobj.A::f() == 5 )
        i++;

    if( i == 5 )
        printf("ok\n");
    else
        printf("ng\n");
}
   

