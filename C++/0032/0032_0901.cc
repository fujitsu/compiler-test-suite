





#include <stdio.h>

int x = 0;
int y = 0;
int z = 0;

class A {
    private:
        int a;
    public:
        A(int i) { x++; a = i + x; }
	friend int cmpa(A&, A&);
};

int cmpa(A &r1, A &r2)
{
        return r1.a < r2.a;
}

static A aobj1 = 0;
static A aobj2 = A(0);

struct B {
    private:
        int b;
    public:
        B(int i) { y++; b = i + y; }
	friend int cmpb(B&, B&);
};

int cmpb(B &r1, B &r2)
{
        return r1.b < r2.b;
}

static B bobj1 = 0;
static B bobj2 = B(0);

union C {
    private:
        int c;
    public:
        C(int i) { z++; c = i + z; }
	friend int cmpc(C&, C&);
};

int cmpc(C &r1, C &r2)
{
        return r1.c < r2.c;
}

static C cobj1 = 0;
static C cobj2 = C(0);

void f()
{
    A aobj3(0);
    B bobj3(0);
    C cobj3(0);
}

static A aobj4(0);
static B bobj4(0);
static C cobj4(0);

void g()
{
    A aobj5 = A(0);
    B bobj5 = B(0);
    C cobj5 = C(0);
}

static A aobj6 = A(0);
static B bobj6 = B(0);
static C cobj6 = C(0);
int main()
{
    int i = 0;
    int h();

    f();
    g();

    if( cmpa(aobj1,aobj2) && cmpa(aobj2,aobj4) && cmpa(aobj4,aobj6) )
        i++;

    if( cmpb(bobj1,bobj2) && cmpb(bobj2,bobj4) && cmpb(bobj4,bobj6) )
        i++;

    if( cmpc(cobj1,cobj2) && cmpc(cobj2,cobj4) && cmpc(cobj4,cobj6) )
        i++;

    if( h() ) i++;

    if( i == 4 )
        printf("ok\n");
    else
        printf("ng\n");
} 

static A aobj7 = 0;
static B bobj7 = 0;
static C cobj7 = 0;

int h()
{
    return cmpa(aobj6,aobj7) && cmpb(bobj6,bobj7) && cmpc(cobj6,cobj7);
}
