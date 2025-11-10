#include "public3/004.h"
#include <initializer_list>

class A
{
public:
    A(std::initializer_list<int>){}
    A(){}
};

void f(A a = {}) {}
void g(A a = {1, 2}) {}
void h(const A& a = {1, 2}) {}

class B
{
public:
    B(int, int){}
};
void i(B b = {1, 2}) {}
void j(const B& b = {1, 2}) {}

template <int...args>
class C
{
public:
    C(A a = {0, args..., 4}){}
};

void test()
{
    C<> c1;
    C<1, 2, 3> c2;
}

PASS_CASE_MAIN_FUNCTION
