#include "public3/004.h"
#include <initializer_list>

class X
{
public:
    X(std::initializer_list<int>) {}
};

X foo() { return {1, 'c', false}; }

void test()
{
    foo();
    
    auto x = []() -> X { return {1, 2}; };
    x();
}

PASS_CASE_MAIN_FUNCTION
