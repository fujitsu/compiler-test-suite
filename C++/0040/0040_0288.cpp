#include "public1/004.h"

class E {};

template <class ...Types1>
class A
{
public:
    void f() throw(Types1...) {}

    template <class ...Types2>
    void g() throw(long, Types1..., E, Types2...) {}
};

template <class ...Types>
void f() throw(Types...) {}

template <class ...Types>
void g() throw(Types..., E) {}

void test()
{
    A<> a0;
    A<int> a1;
    A<bool, char> a2;
    a0.f();
    a0.g();
    a1.f();
    a1.g();
    a2.f();
    a2.g();

    f<>();
    f<int>();
    f<bool, char>();
    g<>();
    g<int>();
    g<bool, char>();
}

PASS_CASE_MAIN_FUNCTION
