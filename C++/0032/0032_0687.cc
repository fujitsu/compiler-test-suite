





#include <stdio.h>

int x=0;

struct A {
    public:
        virtual int v1();
        virtual int v2();
        virtual int v3();
};

int A::v1() { return 1; }
int A::v2() { return 2; }
int A::v3() { return 3; }

struct B : virtual public A {
    public:
        int v1();
        int v2();
};

int B::v1() { return 10; }
int B::v2() { return 20; }

struct C : virtual public A {
    public:
        int v1();
        int v2();
};

int C::v1() { return 30; }
int C::v2() { return 40; }

struct D : public B, public C {
    public:
        int v1();
        int v2(); 
};

int D::v1() { return 100; }
int D::v2() { return 0; } 
int main()
{
    D dobj;
    C cobj;
    C *pc = &dobj;
    B bobj;
    B *pb = &dobj;
    A *pa = &dobj;
    A *pac = &cobj;
    A *pab = &bobj;

    x += pa->v1();          
    x += pa->v2();          
    x += pa->v3();          

    x += pb->v1();          
    x += pb->v2();          
    x += pb->v3();          

    x += pc->v1();          
    x += pc->v2();          
    x += pc->v3();          

    x += pac->v1();         
    x += pac->v2();         
    x += pac->v3();         

    x += pab->v1();         
    x += pab->v2();         
    x += pab->v3();         

    if( x == 515 )
        printf("ok\n");
    else
        printf("ok\n");
}
