#include "public3/004.h"
#include "public3/005.h"
#include <initializer_list>

class A {} a;

void test()
{
    auto x = {1, 2, 3};
    const auto& y = {a, a};
    auto&& z = {a, a};
    static_assert((is_same<decltype(x), std::initializer_list<int> >::value), "error");
    static_assert((is_same<decltype(y), const std::initializer_list<A>& >::value), "error");
    static_assert((is_same<decltype(z), std::initializer_list<A>&& >::value), "error");
}

PASS_CASE_MAIN_FUNCTION
