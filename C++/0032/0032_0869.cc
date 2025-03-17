





#include <stdio.h>

class A {
    public:
        int a1,a2;
        A* clone();
        A* newA();
};

A* A::clone()
{
    return new A(*this);
}

A* A::newA()
{
    return new A();
}

struct B {
    public:
        int b1,b2;
        B* clone();
        B* newB();
};

B* B::clone()
{
    return new B(*this);
}

B* B::newB()
{
    return new B();
}

union C {
    public:
        int c1,c2;
        C* clone();
        C* newC();
};

C* C::clone()
{
    return new C(*this);
}

C* C::newC()
{
    return new C();
}
int main()
{
    A aobj;  aobj.a1 = 1;  aobj.a2 = 2;
    B bobj;  bobj.b1 = 3;  bobj.b2 = 4;
    C cobj;  cobj.c1 = 5;  cobj.c2 = 6;

    A *pa1 = aobj.clone();
    B *pb1 = bobj.clone();
    C *pc1 = cobj.clone();

    A *pa2 = aobj.newA();
    B *pb2 = bobj.newB();
    C *pc2 = cobj.newC();

    if( pa2->a1 != 1 && pa2->a2 != 2 && pb2->b1 != 3 &&
        pb2->b2 != 4 && pc2->c1 != 6 )
    {
        A *pa3 = pa1->clone();
        B *pb3 = pb1->clone();
        C *pc3 = pc1->clone();

        if( pa3->a1 == 1 && pa3->a2 == 2 && pb3->b1 == 3 &&
            pb3->b2 == 4 && pc3->c2 == 6 )
            printf("ok\n");
        else
            printf("ng\n");
    }
    else
        printf("ng\n");
}
