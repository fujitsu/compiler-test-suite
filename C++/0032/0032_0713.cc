





#include <stdio.h>

int x = 10;
int y = 5;

struct A {
    public:
        virtual void f() { x++; }
        A() { }
};

struct B : public A {
    public:
        B() { f(); }
        void g() { f(); }
};

struct C : public B {
    public:
        void f() { y--; }
        C() { }
};
int main()
{
    C c1,c2,c3;
    c1.g();

    if( x == 13 && y == 4 )
        printf("ok\n");
    else
        printf("ng\n");
}
