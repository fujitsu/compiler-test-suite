





#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>

int x = 0;
int y = 0;
int z = 0;

class A {
        int a;
    public:
        A() { }
        A(int i) { a = i; }
	int f() { return a; }
        void *operator new(size_t);
        void  operator delete(void *);
};

void *A::operator new(size_t size)
{
    x++;
    return malloc(size);
}

void A::operator delete(void *p)
{
    x += 2;
    free(p);
}

struct B {
        int b;
    public:
        B() { }
        B(int i) { b = i; }
        int f() { return b; }
        void *operator new(size_t);
        void  operator delete(void *);
};

void *B::operator new(size_t size)
{
    y += 3;
    return malloc(size);
}

void B::operator delete(void *p)
{
    y += 4;
    free(p);
}

union C {
        int c;
    public:
        C() { }
        C(int i) { c = i; }
        int f() { return c; }
        void *operator new(size_t);
        void  operator delete(void *);
};

void *C::operator new(size_t size)
{
    z += 5;
    return malloc(size);
}

void C::operator delete(void *p)
{
    z += 6;
    free(p);
}
int main()
{
    int i = 0;

    A *pa1 = new A;
    B *pb1 = new B;
    C *pc1 = new C;

    if( x == 1 && y == 3 && z == 5 )
        i++;

    A *pa2 = new A(3);
    B *pb2 = new B(5);
    C *pc2 = new C(7);

    if( pa2->f() == 3 && pb2->f() == 5 && pc2->f() == 7 &&
        x == 2 && y == 6 && z == 10 )
        i++;

    delete pa1;    delete pb1;    delete pc1;

    if( x == 4 && y == 10 && z == 16 ) i++;

    delete pa2;    delete pb2;    delete pc2;
    
    if( x == 6 && y == 14 && z == 22 ) i++;

    if( i == 4 )
        printf("ok\n");
    else
        printf("ng\n");
}
