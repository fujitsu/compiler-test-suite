





#include <stdio.h>

class CL {
    public:
        int a;
        CL() { a = 10; }
        int f1();
        int f2() const;
        int f3() volatile;
};

int CL::f1() { return ++a; }

int CL::f2() const { return a; }

int CL::f3() volatile { return ++a; }
int main()
{
    CL clobj;
    const CL cclobj;
    volatile CL vclobj;

    if( clobj.f1() == 11 && clobj.f2() == 11 && clobj.f3() == 12 &&
        cclobj.f2() == 10 && vclobj.f3() == 11 )
        printf("ok\n");
    else
        printf("ng\n");
}
