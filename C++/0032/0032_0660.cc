





#include <stdio.h>

struct A { public: int i; char a; };
struct B : public A { public: int i; char b; };
struct C : public A { public: int i; char c; };
struct D : public B, public C { public: int i; char d; };
int main()
{
    D dobj;

    dobj.i = 1;
    dobj.B::i = 2;
    dobj.C::i = 3;
    dobj.b = 'B';
    dobj.c = 'C';
    dobj.d = 'D';

    B *pb = &dobj;
    C *pc = &dobj;
    D *pd = &dobj;

    if( pb->i == 2 && pb->b == 'B' &&
        pc->i == 3 && pc->c == 'C' &&
        pd->i == 1 && pd->d == 'D' )
    {
        pb->A::i = 10;
        pb->a = 'X';
        pc->A::i = 20;
        pc->a = 'Y';

        A *pa1 = pb;
        A *pa2 = pc;

        if( pa1->i == 10 && pa1->a == 'X' &&
            pa2->i == 20 && pa2->a == 'Y' )
            printf("ok\n");
        else
        printf("ng\n");
    }
    else
        printf("ng\n");
}

