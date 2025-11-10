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
    typedef A type;

    template <class T>
    class inner
    {
    public:
        inner(T, T) {}
    };
};

template <class T>
void f()
{
    typename T::type a {1, 2};
    typename T::type b = {1, 2};
    typename T::template inner<int> c {1, 2};
    typename T::template inner<int> d = {1, 2};
}

void test()
{
    f<B>();
}

PASS_CASE_MAIN_FUNCTION
