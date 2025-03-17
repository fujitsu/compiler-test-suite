





#include <stdio.h>

class A {
    private:
        int a;
    public:
        A(int i) { a = i; }
        int f() { return a; }
};

class B : public A {
    private:
        int b;
    public:
        B(int i) : A(i+1) { b = i; }
        int f() { return b; }
};

class C : public B {
    private:
        int c;
    public:
        C(int i) : B(i+1) { c = i; }
        int f() { return c; }
};

class D : public C {
    private:
        int d;
    public:
        D(int i) : C(i+1) { d = i; }
        int f() { return d; }
};

class E : public D {
    private:
        int e;
    public:
        E(int i) : D(i+1) { e = i; }
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
   

