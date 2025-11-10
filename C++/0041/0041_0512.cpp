#include "public3/004.h"
#include <initializer_list>

class A
{
public:
    A(std::initializer_list<int>) {}
};

class B
{
public:
    B(int, double) {}
};

struct String
{
    String(const char*){}
};

class C
{
public:
    C(String) {}
};

class D
{
public:
    D(A, C) {}
};

void f(A) {}
void g(B) {}
void h(C) {}
void i(D) {}

void test()
{
    f({});
    f({'a', 'b'});
    g({'a', 'b'});
    h({"foo"});
    i({ {1, 2}, {"bar"} });
}

PASS_CASE_MAIN_FUNCTION
