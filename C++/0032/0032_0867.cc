





#include <stdio.h>

class A {
    public:
        int a1,a2;
        A(int i, int j) { a1 = i; a2 = j; }
};

struct B {
    public:
        int b1,b2;
        B(int i, int j) { b1 = i; b2 = j; }
};

union C {
    public:
        int c1,c2;
        C(int i, int j) { c1 = i; c2 = j; }
};

volatile A aobj1(1,2);
volatile B bobj1(2,3);
volatile C cobj1(3,4);
int main()
{
    volatile A aobj2(3,4);
    volatile B bobj2(4,5);
    volatile C cobj2(5,6);

    volatile A *pa = new A(5,6);
    volatile B *pb = new B(6,7);
    volatile C *pc = new C(7,8);

    volatile A aobj3 = A(7,8);
    volatile B bobj3 = B(8,9);
    volatile C cobj3 = C(9,0);

    if( aobj1.a1 == 1 && aobj1.a2 == 2 && aobj2.a1 == 3 && aobj2.a2 == 4 &&
        (*pa).a1 == 5 && (*pa).a2 == 6 && aobj3.a1 == 7 && aobj3.a2 == 8 &&
        bobj1.b1 == 2 && bobj1.b2 == 3 && bobj2.b1 == 4 && bobj2.b2 == 5 &&
        (*pb).b1 == 6 && (*pb).b2 == 7 && bobj3.b1 == 8 && bobj3.b2 == 9 &&
        cobj1.c1 == 4 && cobj2.c2 == 6 && (*pc).c1 == 8 && cobj3.c2 == 0 )
        printf("ok\n");
    else
        printf("ng\n");

   delete pa;    delete pb;    delete pc;
}
