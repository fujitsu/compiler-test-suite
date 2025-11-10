#include "public2/004.h"

class A
{
public:
    int a = 1, b { a };
    const int c = d, d { 2 };
    
    static int e; 
    int f = e, g { h };
    static int h; 
    
    int i() { return 5; }
    int j = i(), k { l() };
    int l(); 
    
    static int m() { return 7; }
    int o = m(), p { q() };
    static int q(); 
};

int A::e = 3;
int A::h = 4;
int A::l() { return 6; }
int A::q() { return 8; }

class B : public A
{
public:
    int r = a, s { e }, t = i(), u { m() };
};

class C : virtual public A {};
class D : virtual public A
{
public:
    int v = h + i();
};

class E : public C, public D
{
public:
    int w = a;
    int x { e };
    int y = i();
    int z { m() };
    int array[3] {a, v, x};
    int& reference {a};
    int* pointer = {&a};
};

void test()
{
    B b;
    assert(b.r == 1);
    assert(b.s == 3);
    assert(b.t == 5);
    assert(b.u == 7);
    
    E e;
    assert(e.w == 1);
    assert(e.x == 3);
    assert(e.y == 5);
    assert(e.z == 7);
    assert(e.array[0] == 1 && e.array[1] == 9 && e.array[2] == 3);
    assert(e.reference == 1);
    assert(*e.pointer == 1);
}

PASS_CASE_MAIN_FUNCTION
