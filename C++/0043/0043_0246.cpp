#include <exception>
#include "./004.h"

void test()
{
    std::exception_ptr ptr;
    assert(ptr == nullptr);
    assert(ptr == 0);
}

PASS_CASE_MAIN_FUNCTION
