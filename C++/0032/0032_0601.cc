





#include <stdio.h>

int a;

class CL {
    public:
        int a;
        int f1() { return ++a; }
        int f2();
};

inline int CL::f2() { return ++a; }
int main()
{
    CL clobj;

    clobj.a = 2;

    if( clobj.f1() == 3 && clobj.f2() == 4 )
        printf("ok\n");
    else
        printf("ng\n");
}
