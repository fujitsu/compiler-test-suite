





#include <stdio.h>

struct CL {
    public:
        int        i1, i2;
        static int si1, si2, si3;
        enum EN { e0, e1 };
        struct A { public: int a; } aobj;
        typedef int I;
        void        set1(int i) { i1 = e0; si1 = i; }
        void        set2(int);
        static void sset1() { si2 = e1; }
        static A sset2(int);
};

void CL::set2(int i)
{
    i2 = i;
}

CL::A CL::sset2(int i)
{
    A aobj;
    I x;

    for(x=0; x<i; x++);

    si3 = x;
    aobj.a = x;
    return aobj;
}

int CL::si1;
int CL::si2;
int CL::si3;
int main()
{
    CL clobj;

    clobj.set1(10);
    clobj.set2(20);
    clobj.sset1();
    clobj.aobj = clobj.sset2(5);

    if( clobj.i1 == 0 && clobj.i2 == 20 &&
        clobj.si1 == 10 && clobj.si2 == 1 && clobj.si3 == 5 &&
        clobj.aobj.a == 5 )
        printf("ok\n");
    else
        printf("ng\n");
}



