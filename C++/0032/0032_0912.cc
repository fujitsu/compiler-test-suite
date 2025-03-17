





#include <stdio.h>

int g_a = 0;
int g_b = 0;

class A {
    public:
        int a;
        A(int i) : a(i) { }
        virtual void f(void);
};

void A::f()
{
    g_a++;
}

class B : public A {
    public:
        int b;
        B(int i) : b(i), A(i+1) { }
        void f(void);
};

void B::f()
{
    g_b++;
}
int main()
{
    int i = 0;
    A aobj = 3;
    B bobj = B(1);

    aobj = bobj;
    aobj.f();
    bobj.f();
    if( g_a == 1 && g_b == 1 ) i++;

    (A &)bobj = aobj;
    bobj.f();
    if( g_a == 1 && g_b == 2 ) i++;

    if( i == 2 )
        printf("ok\n");
    else
        printf("ng\n");
}
