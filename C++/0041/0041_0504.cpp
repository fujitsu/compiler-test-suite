#include "public3/004.h"
#include <initializer_list>

int count = 0;

class A
{
public:
    A() { count++; }
    A(const A&) { count++; }
};

void test()
{
    A a1, a2, a3;
    assert(count == 3);
    std::initializer_list<A> il = {a1, a2, a3};
    assert(count == 6);
    
}

PASS_CASE_MAIN_FUNCTION
