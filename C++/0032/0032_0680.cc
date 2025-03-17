





#include <stdio.h>

int x=0;

class A {
    public:
        virtual int v1();
        virtual int v2();
        virtual int v3();
};

int A::v1() { return 1; }
int A::v2() { return 2; }
int A::v3() { return 3; }

class B : public A {
    public:
        int v1();
        int v2();
};

int B::v1() { return 10; }
int B::v2() { return 20; }

class C : public B {
    public:
        int v1();
};

int C::v1() { return 100; }
int main()
{
    C cobj;
    B bobj;
    A aobj;
    A *pac = &cobj;
    A *pab = &bobj;

    x += pac->v1();          
    x += pac->v2();          
    x += pac->v3();          

    x += pab->v1();          
    x += pab->v2();          
    x += pab->v3();          

    x += aobj.v1();          
    x += aobj.v2();          
    x += aobj.v3();          

    if( x == 162 )
        printf("ok\n");
    else
        printf("ng\n");
}
