#include "public1/004.h"
#include "public1/005.h"

template <class T, class U = double>
U __test(T t = 0, U u = 0);

void test()
{
    static_assert((is_same<decltype(__test(1, 'c')), char>::value == true), "not expected type");
    static_assert((is_same<decltype(__test(1)), double>::value == true), "not expected type");
    static_assert((is_same<decltype(__test<int>()), double>::value == true), "not expected type");
    static_assert((is_same<decltype(__test<int, char>()), char>::value == true), "not expected type");
}

PASS_CASE_MAIN_FUNCTION
