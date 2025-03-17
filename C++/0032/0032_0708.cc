





#include <stdio.h>

class A { public: int a; };
class B { public: int b; };
class C : public A, public B { public: int c; };
int main()
{
    int func1(void);
    int func2(void);
    int func3(void);
    int func4(void);

    if( func1() && func2() && func3() && func4() )
        printf("ok\n");
    else
        printf("ng\n");
}

int func1(void)
{
    C *pc1 = new C;
    C *pc2;
    B *pb1, *pb2;

    pb1 = pc1;
    pb2 = (B*)pc1;
    pc2 = (C*)pb1;

    return ( pc1 == pc2 && pb1 == pb2 );
}

int func2(void)
{
    C cobj;
    C *p = &cobj;

    if ( p ==0 ) return 1;

    return ( (char *)(B *)p != (char *)p );
}

int func3(void)
{
    C cobj;
    C *p = &cobj;
    if ( p ==0 ) return 1;
    return ( (C *)p == p && (B *)p == p && (B *)p == (C *)p );
}

int func4(void)
{
    C *pc = 0;
    B *pb = 0;
    int i = 0;

    if( pb == 0 ) i++;
    pb = pc;
    if( pb == 0 ) i++;

    if( i == 2 )
        return 1;
    else
        return 0;
}
