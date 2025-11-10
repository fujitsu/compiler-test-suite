#include "public1/004.h"
#include "public1/005.h"

template <class = int, class ...Types>
class A {};

template <int = 1, int ...args>
class B {};

template <class, class ...Types>
class C {};

template <int, int ...args>
class D {};

template <class T = int, class ...Types>
using alias_C = C<T, Types...>;

template <int a = 2, int ...args>
using alias_D = D<a, args...>;

void test()
{
    assert_true((is_same<A<>, A<int> >::value));
    assert_true((is_same<B<>, B<1> >::value));
    assert_true((is_same<alias_C<>, C<int> >::value));
    assert_true((is_same<alias_D<>, D<2> >::value));
}

PASS_CASE_MAIN_FUNCTION
