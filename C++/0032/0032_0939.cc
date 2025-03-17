





#include <stdio.h>

class A {
    private:
        int i;
        int *p;
        int f() { return i + *p; }
    protected:
        int f(int x) { return ( i + *p ) * x; }
    public:
        A() { }
        A(int a, int *b) { i = a; p = b; }
        int f(int x, int y) { return i * x + *p * y; }
        int g() { return f(); }
};

class B : public A {
    public:
        int b;
        B() { }
        B(int i, int *p) : b(i), A(i,p) { }
        int h(int i) { return A::f(i); }
};
int main()
{
    int i = 5;
    A aobj = A(3,&i);
    B bobj = B(3,&i);

    if( aobj.f(2,4) == 26 && aobj.g() == 8 &&
        bobj.f(2,4) == 26 && bobj.g() == 8 && bobj.h(4) == 32 )
        printf("ok\n");
    else
        printf("ng\n");
}

