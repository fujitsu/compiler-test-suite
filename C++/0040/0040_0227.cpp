#include "public1/004.h"
#include "002.h"

struct Object {};

void test()
{
    assert(sizeof(__test(reinterpret_cast<fun_type&&>(lvalue<fun_type>()))) == sizeof(one));
    
    assert(sizeof(__test(reinterpret_cast<Object&&>(lvalue<Object>()))) == sizeof(two));
}

PASS_CASE_MAIN_FUNCTION
