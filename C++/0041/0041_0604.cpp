#include "public3/004.h"

struct B
{
    B() = default;
    B(const B&) = delete; 
    B(B&&) = default;
};

struct D : B { } d1;
D d2 = static_cast<D&&>(d1); 
 
void test(){}

PASS_CASE_MAIN_FUNCTION
