#include "public3/004.h"
#include <initializer_list>

class A {};

class B
{
public:
    B() {}
    B(const A&) {}
};

class C
{
public:
    C() {}
    operator A(){ return A(); }
};

template <class T>
void f(std::initializer_list<T>) {}

template <class T>
void g(const T(&)[2]) {}

void test()
{
    {
        f<double>({1, false, 'a'});
        f<int>({'a', false});
        A a;
        B b;
        C c;
        f<B>({a, b});
        f<A>({a, c});
    }
    {
        g<double>({1, 'a'});
        g<int>({'a', false});
        A a;
        B b;
        C c;
        g<B>({a, b});
        g<A>({a, c});
    }
}

PASS_CASE_MAIN_FUNCTION
