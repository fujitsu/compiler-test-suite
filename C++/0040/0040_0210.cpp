#include "001.h"

void test()
{
    assert_true(sizeof(std::nullptr_t) == sizeof(void*));
}

PASS_CASE_MAIN_FUNCTION
