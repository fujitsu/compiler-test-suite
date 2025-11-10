#include "public3/004.h"

struct TrivalCopyCtor {};

struct UnionLike1 
{
    union { TrivalCopyCtor variant; };
};

union UnionLike2 
{
    union { int n; };
    TrivalCopyCtor variant;
};

void test() 
{
    UnionLike1 _ul1;
    UnionLike2 _ul2;
    UnionLike1 ul1 ( _ul1 ); 
    UnionLike2 ul2 ( _ul2 ); 
}

PASS_CASE_MAIN_FUNCTION
