#include "public3/004.h"

struct NonTrivalCopyCtor
{
    NonTrivalCopyCtor(const NonTrivalCopyCtor&) {}
};

union U
{
    NonTrivalCopyCtor ntcc;
    U(const U&) {} 
    U(){}
};

void test()
{
    U _u;
    U u(_u); 
}

PASS_CASE_MAIN_FUNCTION
