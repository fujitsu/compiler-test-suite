#include "public3/004.h"
#include "public3/005.h"

template <class ET, class EU, class T, class U = bool>
void __test();

template <class ET, class EU, class T = int, class U>
void __test()
{
    static_assert((is_same<ET, T>::value == true), "not expected type");
    static_assert((is_same<EU, U>::value == true), "not expected type");
}

void test()
{
    __test<int, bool>();
    __test<char, bool, char>();
    __test<int, double, int, double>();
}

PASS_CASE_MAIN_FUNCTION
