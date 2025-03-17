





#include <stdio.h>

int x = 0;
int y = 0;
int z = 0;

class A {
    private:
        int a;
    public:
        A(int i) { a = i; }
        virtual ~A();
};

A::~A() { x++; }

class B : public A {
    private:
        int b;
    public:
        B(int i) : A(i) { b = i; }
        virtual ~B();
};

B::~B() { y++; }

class C : public B {
    private:
        int c;
    public:
        C(int i) : B(i) { c = i; }
        ~C() { z++; }
};

void f()
{
    A aobj(2);
    B bobj(4);
    C cobj(8);

    A *pa1 = new B(1);
    A *pa2 = new C(3);
    B *pb  = new C(5);

    delete pa1;    delete pa2;    delete pb;
}
int main()
{
    f();

    if( x == 6 && y == 5 && z == 3 )
        printf("ok\n");
    else
        printf("ng\n");
}   
