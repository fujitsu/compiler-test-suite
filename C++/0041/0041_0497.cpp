#include "public3/004.h"
#include <initializer_list>

int count = 0;

class A
{
public:
    A() { count++; }
};

void test()
{
    A a1 {};
    assert(count == 1);
    A a2 = {};
    assert(count == 2);
    const A& ra1 = {};
    assert(count == 3);
    const A& ra2 = {};
    assert(count == 4);
}

PASS_CASE_MAIN_FUNCTION
