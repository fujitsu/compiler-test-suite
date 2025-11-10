#include "public2/004.h"

struct TrivalCopyAssi {};

struct UnionLike1 
{
    union { TrivalCopyAssi variant; };
};

union UnionLike2 
{
    union { int n; };
    TrivalCopyAssi variant;
};

void test() 
{
    UnionLike1 _ul1;
    UnionLike2 _ul2;
    UnionLike1 ul1;
    UnionLike2 ul2;
    ul1 = _ul1; 
    ul2 = _ul2; 
}

PASS_CASE_MAIN_FUNCTION
