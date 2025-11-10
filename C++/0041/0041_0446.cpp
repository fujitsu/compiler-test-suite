#include "public3/004.h"

class X
{
public:
    explicit constexpr operator bool() { return true; }
};

constexpr X x = {};
static_assert(x, "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
