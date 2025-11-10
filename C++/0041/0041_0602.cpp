#include "public3/004.h"

struct B
{
    B& operator=(const B&) = delete;
    B& operator=(B&&) = default;
};

struct X : B
{
    X(){}
};

void test()
{
    X x1, x2;
    x1 = static_cast<X&&>(x2); 
}

PASS_CASE_MAIN_FUNCTION
