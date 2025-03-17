





#include <stdio.h>

class A;

class CL {
    public: 
        int i;
        class A *p;
};

class A {
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
