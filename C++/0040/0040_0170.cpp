#include "public2/004.h"
#include "000.h"

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
