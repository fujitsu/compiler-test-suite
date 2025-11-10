#include "001.h"

void test()
{
    assert_true(!nullptr);
    assert(!prvalue<std::nullptr_t>());
    std::nullptr_t __my_nullptr;
    std::nullptr_t *p = &__my_nullptr;
    assert(!__my_nullptr);
    assert(!*p);
}

PASS_CASE_MAIN_FUNCTION
