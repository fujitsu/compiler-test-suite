





#include <stdio.h>

struct A;

struct CL {
    public: 
        int i;
        struct A *p;
};

struct A {
    public:
        int a, b;
};
int main()
{
    CL clobj;
    A  aobj;

    clobj.p = &aobj;
    clobj.i = 1;
    clobj.p->a = 2;
    clobj.p->b = 3;

    if( clobj.i == 1 && clobj.p->a == 2 && clobj.p->b== 3 )
        printf("ok\n");
    else
        printf("ng\n");
}
