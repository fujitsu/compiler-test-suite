





#include <stdio.h>

struct A {
    public:
        int a;
        void func(A *);
};

void A::func( A *p )
{
    if( p == this && p->a == this->a )
        printf("ok\n");
    else
        printf("ng\n");
}
int main()
{
    A aobj;

    aobj.a = 10;
    aobj.func(&aobj);
}
