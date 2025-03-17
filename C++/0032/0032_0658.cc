





#include <stdio.h>

class A { public: int i; void func(A &); };
class B { public: int i; void func(B &); };
class C { public: int i; void func(C &); };
class D : public A, public B, public C { public: int i; void func(D &); };

void A::func(A &aobj) { i++; }
void B::func(B &bobj) { i++; }
void C::func(C &cobj) { i++; }
void D::func(D &dobj)
{
    i++;
    A::func(dobj);
    B::func(dobj);
    C::func(dobj);
}
int main()
{
    D dobj;

    dobj.A::i = 1;
    dobj.B::i = 2;
    dobj.C::i = 3;
    dobj.i = 4;

    dobj.A::func(dobj);
    dobj.B::func(dobj);
    dobj.C::func(dobj);
    dobj.D::func(dobj);

    A *pa = &dobj;
    B *pb = &dobj;
    C *pc = &dobj;
    D *pd = &dobj;
   
    if( pa->i == 3 && pb->i == 4 && pc->i == 5 && pd->i == 5 )
        printf("ok\n");
    else
        printf("ng\n");
}

