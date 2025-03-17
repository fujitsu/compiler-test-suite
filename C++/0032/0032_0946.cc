





#include <stdio.h>

int x1 = 0, x2 = 0, x3 = 0, y = 0, z = 0;

class A { 
    public:
        int a;
        A(int i) : a(i) { }
};

class B : public A {
    public:
        int b;
        B(int i) : b(i), A(i+1) { }
};

class C : public B {
    public:
        int c;
        C(int i) : c(i), B(i+1) { }
};

void f1(A *);
void f1(void *);

void f2(A *);
void f2(const void *);

void g(A *);
void g(B *);

void h(A &);
void h(B &);
int main()
{
    B bobj(1);
    C cobj(1);
    C rc = cobj;

    f1(&bobj);
    f2(&bobj);
    g(&cobj);
    h(rc);

    if( x1 == 2 && x2 == 2 && y == 2 && z == 2 ) 
        printf("ok\n");
    else
        printf("ng\n");
}

void f1(A *pa) { x1 += pa->a; }

void f1(void *pv) { x1 += 2; }

void f2(A *pa) { x2 += pa->a; }

void f2(const void *pcv) { x2 += 3; }

void g(A *pa) { y += pa->a; }

void g(B *pb) { y += pb->b; }

void h(A &ra) { z += ra.a; }

void h(B &rb) { z += rb.b; }
