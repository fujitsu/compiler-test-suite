#include "public2/004.h"

struct TrivalDctor { };

struct UnionLike1 
{
    union { TrivalDctor variant; };
} ul1; 

union UnionLike2 
{
    union { int n; };
    TrivalDctor variant;
} ul2; 

void test(){}

PASS_CASE_MAIN_FUNCTION
