





#include <stdio.h>

class A { public: int i; char a; };
class B : virtual public A { public: int i; char b; };
class C : virtual public A { public: int i; char c; };
class D : public A { public: int i; char d; };
class E : public B, public C, public D { public: int i; char e; };
int main()
{
    E eobj;
    B *pb = &eobj;
    C *pc = &eobj;
    D *pd = &eobj;
    E *pe = &eobj;
    A *pa1 = (A *)(B *)pe;
    A *pa2 = (A *)(D *)pe;

    eobj.i = 1;
    pe->B::i = 2;
    eobj.C::i = 3;
    (*pd).i = 4;
    eobj.b = 'B';
    pe->c = 'C';
    eobj.d = 'D';
    ((E *)(C *)pc)->e = 'E';

    pb->A::i = 5;
    pd->A::i = 6;
    pa1->a = 'A';
    pa2->a = 'a';

    if( pa1->i == 5 && pc->a == 'A' &&
        pa2->i == 6 && pd->a == 'a' &&
        (*pe).B::i == 2 && pb->b == 'B' &&
        eobj.C::i == 3 && pc->c == 'C' &&
        pd->i == 4 && pd->d == 'D' &&
        pe->i == 1 && eobj.e == 'E' )
        printf("ok\n");
    else
        printf("ng\n");
}

