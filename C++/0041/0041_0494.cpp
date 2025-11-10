#include "public3/004.h"
#include <initializer_list>

template <class ... Types>
void f(unsigned int size, std::initializer_list<Types>... args)
{
    assert(size == sizeof...(args));
}

void test()
{
    f(0);
    f(1, {1, 2});
    f(2, {1, 2}, {3.0, 4.0});
    auto a = {1, 2}, b = {3, 4, 5};
    f(3, {1, 2}, {3.0, 4.0}, {a, b});
}

PASS_CASE_MAIN_FUNCTION
