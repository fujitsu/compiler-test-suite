





#include <stdio.h>

class A {
    public:
        int a1,a2;
        A() { a1 = a2 = 0; }
        A(int i, int j) { a1 = i; a2 = j; }
        A* clone();
        A* newA();
};

A* A::clone()
{
    return new A(*this);
}

A* A::newA()
{
    return new A();
}

struct B {
    public:
        int b1,b2;
        B() { b1 = b2 = 0; }
        B(int i, int j) { b1 = i; b2 = j; }
        B* clone();
        B* newB();
};

B* B::clone()
{
    return new B(*this);
}

B* B::newB()
{
    return new B();
}

union C {
    public:
        int c1,c2;
        C() { c1 = c2 = 0; }
        C(int i, int j) { c1 = i; c2 = j; }
        C* clone();
        C* newC();
};

C* C::clone()
{
    return new C(*this);
}

C* C::newC()
{
    return new C();
}
int main()
{
    A aobj(1,2);
    B bobj(3,4);
    C cobj(5,6);

    A *pa1 = aobj.clone();
    B *pb1 = bobj.clone();
    C *pc1 = cobj.clone();

    A *pa2 = aobj.newA();
    B *pb2 = bobj.newB();
    C *pc2 = cobj.newC();

    if( pa2->a1 != 1 && pa2->a2 != 2 && pb2->b1 != 3 &&
        pb2->b2 != 4 && pc2->c1 != 6 )
    {
        A *pa3 = pa1->clone();
        B *pb3 = pb1->clone();
        C *pc3 = pc1->clone();

        if( pa3->a1 == 1 && pa3->a2 == 2 && pb3->b1 == 3 &&
            pb3->b2 == 4 && pc3->c2 == 6 )
            printf("ok\n");
        else
            printf("ng 1\n");
    }
    else {
        printf("ng 2\n");
	printf("&aobj=0x%x pa1=0x%x pa2=0x%x\n", &aobj, pa1, pa2);
	printf("pa2->a1=%d pa2->a2=%d pb2->b1=%d pb2->b2=%d pc2->c1=%d\n",
	       pa2->a1,pa2->a2,pb2->b1,pb2->b2,pc2->c1);
	printf("pa1->a1=%d pa1->a2=%d pb1->b1=%d pb1->b2=%d pc1->c1=%d\n",
	       pa1->a1,pa1->a2,pb1->b1,pb1->b2,pc1->c1);
	printf("aobj.a1=%d aobj.a2=%d bobj.b1=%d bobj.b2=%d cobj.c1=%d\n",
	       aobj.a1,aobj.a2,bobj.b1,bobj.b2,cobj.c1);
    }
}
