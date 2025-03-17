





#include <stdio.h>

class CL {
    public:
        int i;
        CL() : clr(*this) { }
        CL *clp;
        CL &clr;
        static CL stcl;
        CL f(int);
        void g(CL);
        int h() { return sizeof(CL); }
};

CL CL::f(int i)
{
    CL clobj;
    clobj.i = i;
    return clobj;
}

void CL::g(CL clobj)
{
    i = clobj.i;
}
int main()
{
    CL clobj1, clobj2;
    
    clobj1.i = (clobj1.f(10)).i;
    clobj2.g(clobj1);

    clobj1.i = (clobj1.f(5)).i;
    clobj1.clp = &clobj2;
    clobj2.clp = &clobj1;

    if( clobj1.clr.i ==  5 && clobj1.clp->i == 10 &&
        clobj2.clr.i == 10 && clobj2.clp->i ==  5 &&
        clobj1.h() == sizeof(clobj1) &&
        clobj2.h() == sizeof(clobj2) )
        printf("ok\n");
    else
        printf("ng\n");
}        
