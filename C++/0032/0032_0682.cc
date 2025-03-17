





#include <stdio.h>

int x=0;

class A {
    public:
        virtual int v1();
        virtual int v2();
        virtual int v3();
};

int A::v1() { return 1; }
int A::v2() { return 2; }
int A::v3() { return 3; }

class B : public A {
    public:
        int v1();
        int v2();
};

int B::v1() { return 10; }
int B::v2() { return 20; }

class C : public A {
    public:
        int v1();
        int v2();
};

int C::v1() { return 30; }
int C::v2() { return 40; }

class D : public B, public C {
    public:
        int v1();
};

int D::v1() { return 100; }
int main()
{
    D dobj;
    C cobj;
    B bobj;
    A *pa1 = (A *)(C *)&dobj;
    A *pa2 = (A *)(B *)&dobj;
    A *pac = &cobj;
    A *pab = &bobj;

    x += pa1->v1();         
    x += pa1->v2();         
    x += pa1->v3();         

    x += pa2->v1();         
    x += pa2->v2();         
    x += pa2->v3();         

    x += pab->v1();         
    x += pab->v2();         
    x += pab->v3();         

    x += pac->v1();         
    x += pac->v2();         
    x += pac->v3();         

    if( x == 372 )
        printf("ok\n");
    else
        printf("ng\n");
}
