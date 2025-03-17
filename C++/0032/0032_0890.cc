





#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>

int x = 0;
int y = 0;
int z = 0;

class A {
        int a;
    public:
        A(int i) { a = i; }
        virtual ~A() { x+=3; }
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

class B : public A {
    private:
        int b;
    public:
        B(int i) : A(i+1) { b = i; }
        virtual ~B() { y+=3; }
	int f() { return b; }
        void *operator new(size_t);
        void  operator delete(void *);
};
        
void *B::operator new(size_t size)
{
    y++;
    return malloc(size);
}

void B::operator delete(void *p)
{
    y += 2;
    free(p);
}

class C : public B {
    private:
        int c;
    public:
        C(int i) : B(i+1) { c = i; }
        ~C() { z+=3; }
	int f() { return c; }
        void *operator new(size_t);
        void  operator delete(void *);
};
        
void *C::operator new(size_t size)
{
    z++;
    return malloc(size);
}

void C::operator delete(void *p)
{
    z += 2;
    free(p);
}
int main()
{
    int i = 0;
    A *pa1 = new A(1);
    A *pa2 = new B(1);
    A *pa3 = new C(1);

    if( pa1->f() == 1 && pa2->f() == 2 && pa3->f() == 3 &&
        x == 1 && y == 1 && z == 1 )
        i++;

    delete pa1;    delete pa2;    delete pa3;

    if( x == 12 && y == 9 && z == 6 ) i++;

    if( i == 2 )
        printf("ok\n");
    else
        printf("ng\n");
}


