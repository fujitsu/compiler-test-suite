#include "001.h"

void test()
{
    assert(!nullptr);
    assert(!prvalue<nullptr_t>());
    assert(!prvalue<const nullptr_t>());
    assert(!prvalue<volatile nullptr_t>());
    assert(!prvalue<const volatile nullptr_t>());
}

PASS_CASE_MAIN_FUNCTION
