#include "public2/004.h"

struct TrivalMoveCtor { };

struct UnionLike1 
{
    union { TrivalMoveCtor variant; };
};

union UnionLike2 
{
    union { int n; };
    TrivalMoveCtor variant;
};

void test() 
{
    UnionLike1 _ul1; UnionLike2 _ul2;
    UnionLike1 ul1 = static_cast<UnionLike1&&>(_ul1); 
    UnionLike2 ul2 = static_cast<UnionLike2&&>(_ul2); 
}

PASS_CASE_MAIN_FUNCTION
