#include "public3/004.h"
#include <initializer_list>

class A
{
public:
    A(std::initializer_list<int>) {}
};

class B
{
public:
    B(const std::initializer_list<int>&, bool = false, int = 0) {}
};

class C
{
public:
    C(const std::initializer_list<int>&, std::initializer_list<int> = {4, 5}) {}
};

void test()
{
    A a{1, 2, 3};
    B b{1, 2, 3};
    C c{1, 2, 3};
    
}

PASS_CASE_MAIN_FUNCTION
