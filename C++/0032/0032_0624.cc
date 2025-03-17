





#include <stdio.h>

class A {
    public:
        typedef int I;
        class  C { public: int i; };
        struct S { int i; };
        union  U { int i; };
        I i;
        C cobj;
        S sobj;
        U uobj;
        A& operator=(const A&);
        A& operator=(const I x) { i = x; return *this; }
        A& operator=(const C &x) { cobj.i = x.i; return *this; }
        A& operator=(const S &x) { sobj.i = x.i; return *this; }
        A& operator=(const U &x) { uobj.i = x.i; return *this; }
};

A& A::operator=(const A &a)
{
    i = a.i;
    cobj.i = a.cobj.i;
    sobj.i = a.sobj.i;
    uobj.i = a.uobj.i;
    return *this;
}

A   g_aobj;
A::I g_i;
A::C g_cobj;
A::S g_sobj;
A::U g_uobj;
int main()
{
    A   i_aobj;
    A::I i_i;
    A::C i_cobj;
    A::S i_sobj;
    A::U i_uobj;

    g_i = 1;
    g_cobj.i = 2;
    g_sobj.i = 3;
    g_uobj.i = 4;
    g_aobj = g_i;
    g_aobj = g_cobj;
    g_aobj = g_sobj;
    g_aobj = g_uobj;
    i_aobj = g_aobj;

    if( i_aobj.i ==1 && i_aobj.cobj.i == 2 &&
        i_aobj.sobj.i == 3 && i_aobj.uobj.i == 4 )
    {
        i_i = 11;
        i_cobj.i = 22;
        i_sobj.i = 33;
        i_uobj.i = 44;
        i_aobj = i_i;
        i_aobj = i_cobj;
        i_aobj = i_sobj;
        i_aobj = i_uobj;
        g_aobj = i_aobj;

        if( g_aobj.i ==11 && g_aobj.cobj.i == 22 &&
            g_aobj.sobj.i == 33 && g_aobj.uobj.i == 44 )
            printf("ok\n");
        else
            printf("ng\n");
    }
    else
        printf("ng\n");
}        
