





#include <stdio.h>

struct V { public: int v; };

struct A { public: unsigned int a; void f(A *); };

struct B : public A, public virtual V { public: int i; };

struct C : public A, public virtual V { public: int i; };

struct D : public B, public C { public: void f(A *); };

void A::f(A *aobj)
{
    (aobj->a) *= 2;
}

void D::f(A *aobj)
{
    v++;
    B::i++;
    C::i--;
    aobj->f(aobj);
}
int main()
{
    D dobj;
    A* pa1 = (A *)(B *)&dobj;
    A* pa2 = (A *)(C *)&dobj;

    dobj.v = 10;
    dobj.B::i = 0;
    dobj.C::i = 0;
    pa1->a = 2;
    pa2->a = 3;

    for( int i=0 ; i<10 ; i++ )
        if( i%2 )
            dobj.f(pa1);
        else
            dobj.f(pa2);

    B *pb = &dobj;
    C *pc = &dobj;

    if( dobj.v == 20 && pb->i == 10 && pb->a == 64 &&
        pc->i == -10 && pc->a == 96 )
        printf("ok\n");
    else
        printf("ng\n");
}
