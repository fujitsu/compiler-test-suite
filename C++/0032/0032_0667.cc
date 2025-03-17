





#include <stdio.h>

class A { public: int i; void func(A *); };
class B : virtual public A { public: int i; void func(A *); };
class C : virtual public A { public: int i; void func(A *); };
class D : public B, public C { public: int i; void func(A *); };

void A::func(A *aobj) { (aobj->i)--; }
void B::func(A *aobj) { i++;  A::func(aobj); }
void C::func(A *aobj) { i*=2; A::func(aobj); }
void D::func(A *aobj) { i=3;  A::func(aobj); }
int main()
{
    D dobj;
    D *pd = &dobj;

    dobj.A::i = 10;
    pd->B::i = 5;
    pd->C::i = 1;
    dobj.D::i = 0;

    dobj.A::func(&dobj);
    dobj.B::func(&dobj);
    dobj.C::func(pd);
    dobj.func(pd);

    if( pd->A::i == 6 && dobj.B::i == 6 && dobj.C::i == 2 && pd->i == 3 )
        printf("ok\n");
    else
        printf("ng\n");
}

