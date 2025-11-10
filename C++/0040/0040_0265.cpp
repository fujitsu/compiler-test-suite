#include "public2/004.h"

struct TrivalDefCtor {};

struct UnionLike1 
{
    union { TrivalDefCtor variant; };
} ul1; 

union UnionLike2 
{
    union { int n; };
    TrivalDefCtor variant;
} ul2; 

void test(){}

PASS_CASE_MAIN_FUNCTION
