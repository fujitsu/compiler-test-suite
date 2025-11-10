#include "public3/004.h"

struct TrivalMoveAssi {};

struct UnionLike1 
{
    union { TrivalMoveAssi variant; };
};

union UnionLike2 
{
    union { int n; };
    TrivalMoveAssi variant;
};

void test() 
{
    UnionLike1 _ul1;
    UnionLike2 _ul2;
    UnionLike1 ul1;
    UnionLike2 ul2;
    ul1 = static_cast<UnionLike1&&>(_ul1); 
    ul2 = static_cast<UnionLike2&&>(_ul2); 
}

PASS_CASE_MAIN_FUNCTION
