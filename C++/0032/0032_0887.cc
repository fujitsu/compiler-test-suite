





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
        void *operator new(size_t, int);
        void  operator delete(void *);
};

void *A::operator new(size_t size)
{
    x++;
    return malloc(size);
}

void *A::operator new(size_t size, int i)
{
    x += i;
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
        void *operator new(size_t, int);
        void  operator delete(void *);
};

void *B::operator new(size_t size)
{
    y += 3;
    return malloc(size);
}

void *B::operator new(size_t size, int i)
{
    y += i;
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
        void *operator new(size_t, int);
        void  operator delete(void *);
};

void *C::operator new(size_t size)
{
    z += 5;
    return malloc(size);
}

void *C::operator new(size_t size, int i)
{
    z += i;
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

    A *pa1 = new A;    A *pa2 = ::new A(3);
    B *pb1 = new B;    B *pb2 = ::new B(5);
    C *pc1 = new C;    C *pc2 = ::new C(7);

    A *pa3 = new(10) A;
    B *pb3 = new(5) B;
    C *pc3 = new(0) C;

    if( x == 11 && y == 8 && z == 5 ) i++;

    A *pa4 = new(1) A(2);    
    B *pb4 = new(3) B(4);
    C *pc4 = new(5) C(8);

    if( x == 12 && y == 11 && z == 10 ) i++;

    delete pa1;    delete pb1;    delete pc1;
    ::delete pa2;  ::delete pb2;  ::delete pc2;
    delete pa3;    delete pb3;    delete pc3;
    delete pa4;    delete pb4;    delete pc4;
    
    if( x == 18 && y == 23 && z == 28 ) i++;

    if( i == 3 )
        printf("ok\n");
    else
        printf("ng\n");
}

