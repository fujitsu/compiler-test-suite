





#include <stdio.h>

int x = 0;
int y = 0;
int z = 0;

class A {
    private:
        int a;
    public:
        virtual void f();
        virtual void g();
        A() { f(); }
        virtual ~A() { g(); }
};

void A::f() { x++; }
void A::g() { x+=2; }

class B : public A {
    private:
        int b;
    public:
        void f();
        virtual void g();
        B() { f(); }
        virtual ~B() { g(); }
};

void B::f() { y++; }
void B::g() { y+=2; }

class C : public B {
    private:
        int c;
    public:
        void f();
        void g();
        C() { f(); }
        ~C() { g(); }
};

void C::f() { z++; }
void C::g() { z+=2; }

void func()
{
    C cobj;
    cobj.f();    cobj.g();

    B *pb = new C;
    pb->f();     pb->g();

    A *pa = new C;
    pa->f();     pb->g();

    delete pb;    delete pa;
}
int main()
{
    func();

    if( x == 9 && y == 9 && z == 18 )
        printf("ok\n");
    else
        printf("ng\n");
}
