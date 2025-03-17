





#include <stdio.h>

class A { public: int i; char a; };
class B : virtual public A { public: int i; char b; };
class C : virtual public A { public: int i; char c; };
class D : public B, public C { public: int i; char d; };
int main()
{
    D dobj;

    dobj.i = 1;
    dobj.A::i = 2;
    dobj.B::i = 3;
    dobj.C::i = 4;
    dobj.a = 'A';
    dobj.b = 'B';
    dobj.c = 'C';
    dobj.d = 'D';

    A *pa = &dobj;
    B *pb = &dobj;
    C *pc = &dobj;
    D *pd = &dobj;

    if( pa->i == 2 && pa->a == 'A' &&
        pb->i == 3 && pb->b == 'B' &&
        pc->i == 4 && pc->c == 'C' &&
        pd->i == 1 && pd->d == 'D' )
        printf("ok\n");
    else
        printf("ng\n");
}

