





#include <stdio.h>

class  CL { 
        int c1; 
    public:
        int c2;
        void cl_set(int x) { c1 = c2 = x; }
        friend int  cl_cmp(CL &, CL &);
 };
struct ST { int s1; };
union  UN { int u1; float u2; };

int  cl_cmp(CL &x, CL &y) { return x.c1 == y.c1 && x.c2 == y.c2; }

class A {
    CL    clmem;
    ST    stmem;
    UN    unmem;
    
    class  C { public: int c; } cobj;
    struct S { int s; } sobj;
    union  U { int u; } uobj;

    enum EN { e0, e1 } en;

    int   bit : 4;

    typedef int I;
    I           i;

  public:
    void            f_set(int);
    friend int      f_cmp(A&, A&);
    friend int      cl_cmp(CL&, CL&);
};

void A::f_set( int x )
{
    clmem.cl_set(x);
    stmem.s1 = x;
    unmem.u1 = x;

    cobj.c = x;
    sobj.s = x;
    uobj.u = x;

    en = e1;
    bit = x;
    i = x;
}

int f_cmp( A &x, A &y )
{
    return cl_cmp(x.clmem, y.clmem) && 
           x.stmem.s1 == y.stmem.s1 && x.unmem.u2 == y.unmem.u2 &&
           x.cobj.c == y.cobj.c && x.sobj.s == y.sobj.s &&
           x.uobj.u == y.uobj.u && x.en == y.en &&
           x.bit == y.bit && x.i == y.i;
}
int main()
{
    A xobj, yobj;

    xobj.f_set(256);

    yobj.f_set(256);

    if( f_cmp( xobj, yobj ) )
        printf("ok\n");
    else
        printf("ng\n");
}
