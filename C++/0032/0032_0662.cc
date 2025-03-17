





#include <stdio.h>

struct A { public: int i; friend void func(A *); };
struct B : public A { };
struct C : public A { };
struct D : public B, public C { public: int i; friend void func(A *); };

void func(A *aobj)
{
    (aobj->i) *= 2;
}
int main()
{
    D dobj;
    A* pa = (A *)(B *)&dobj;
    D* pd = (D *)(B *)pa;

    pa->i = 2;
    ((A *)(C *)pd)->i = 3;
    func(pa);
    func( (A *)(B *)pd );
    func( (A *)(C *)&dobj );

    if( pa->i == 8 && ((A *)(C *)pd)->i == 6 )
        printf("ok\n");
    else
        printf("ng\n");
}

