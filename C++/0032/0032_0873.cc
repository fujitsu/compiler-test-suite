





#include <stdio.h>

class A {
    public:
        int a;
        A(int i) { a = i; }
        A(const A &ra) { a = ra.a; }
        ~A(){ }
};      

struct B {
    public:
        int b;
        B(int i) { b = i; }
        B(const B &rb) { b = rb.b; }
        ~B(){ }
};      

union C {
    public:
        int c;
        C(int i) { c = i; }
        C(const C &rc) { c = rc.c; }
        ~C(){ }
};      

A f(A aobj)
{
    aobj.a++;
    return aobj;
}    

B g(B bobj)
{
    bobj.b++;
    return bobj;
}

C h(C cobj)
{
    cobj.c++;
    return cobj;
}

int main()
{
    A aobj1(1);
    A aobj2 = f( A(2) );
    B bobj1(5);
    B bobj2 = g( B(3) );
    C cobj1(10);
    C cobj2 = h( C(4) );

    aobj1 = f( aobj1 );
    bobj1 = g( bobj1 );
    cobj1 = h( cobj1 );

    if( aobj1.a == 2 && aobj2.a == 3 && bobj1.b == 6 &&
        bobj2.b == 4 && cobj1.c == 11 && cobj2.c == 5 )
        printf("ok\n");
    else
        printf("ng\n");

    return 0;
}
