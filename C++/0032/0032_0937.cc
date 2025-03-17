





#include <stdio.h>

int x = 0;
int y = 0;
int z = 0;

class A {
    private:
        int a;
    public:
        A(int i) : a(i) { }
        int f();
        int f(int);
        int f(int *);
};

class B : public A {
    private: 
        int b;
    public:
        B(int i) : b(i), A(i+1) { }
        int f();
        int f(int);
        int f(int *);
};

class C : public B {
    private:
        int c;
    public:
        C(int i) : c(i), B(i+1) { }
        int f();
        int f(int);
        int f(int *);
};

int A::f() { x++; return a; }
int A::f(int i) { x++; a += i; return a; }
int A::f(int *p) { x++; a += *p; return a; }

int B::f() { y++; return b; }
int B::f(int i) { y++; b += i; return b; }
int B::f(int *p) { y++; b += *p; return b; }

int C::f() { z++; return c; }
int C::f(int i) { z++; c += i; return c; }
int C::f(int *p) { z++; c += *p; return c; }
int main()
{
    int i = 0;
    A aobj(1);
    B bobj(1);
    C cobj(1);

    if( aobj.f() == 1 && aobj.f(1) == 2 && aobj.f(&i) == 2 && x == 3 )
        i++;

    if( bobj.f() == 1 && bobj.f(1) == 2 && bobj.f(&i) == 3 && y == 3 )
        i++;

    if( bobj.A::f() == 2 && bobj.A::f(2) == 4 && bobj.A::f(&i) == 6 &&
        x == 6 )
        i++;

    if( cobj.f() == 1 && cobj.f(1) == 2 && cobj.f(&i) == 5 && z == 3 )
        i++;

    if( cobj.A::f() == 3 && cobj.A::f(3) == 6 && cobj.A::f(&i) == 10 &&
        x == 9 && y == 3 && z == 3 )
        i++;

    if( i == 5 )
        printf("ok\n");
    else
        printf("ng\n");
}
