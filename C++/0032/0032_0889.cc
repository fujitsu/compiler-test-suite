





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

    A *pa = new A[10];
    B *pb = new B[5];
    C *pc = new C[2];

    if( x == 0 && y == 0 && z == 0 ) i++;

    delete[] pa;    delete[] pb;    delete[] pc;

    if( x == 0 && y == 0 && z == 0 ) i++;

    if( i == 2 )
        printf("ok\n");
    else
        printf("ng\n");
}
