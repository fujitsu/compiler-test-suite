





#include <stdio.h>

struct CL {
    public:
        int a;
        int f1();
        int f2() const;
        int f3() volatile;
        int f4() const volatile;
};

int CL::f1() { return ++a; }

int CL::f2() const { return a; }

int CL::f3() volatile { return ++a; }
  
int CL::f4() const volatile { return a; }
int main()
{
    CL clobj;

    clobj.a = 10;

    if( clobj.f1() == 11 && clobj.f2() == 11 &&
        clobj.f3() == 12 && clobj.f4() == 12 )
        printf("ok\n");
    else
        printf("ng\n");
}
