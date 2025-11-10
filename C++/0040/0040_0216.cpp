#include "public2/004.h"

const char* p =
R"#(
//)"
/**/"
)#";

static_assert(sizeof(
R"#(
//)"
/**/"
)#"
) == 13, "error");

void test()
{
    assert(p[1] == '/');
    assert(p[7] == '*');
}

PASS_CASE_MAIN_FUNCTION
