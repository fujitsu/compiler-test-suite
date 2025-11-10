#include "public3/004.h"

void test()
{
    assert(sizeof(R"delimiter((a|b))delimiter") == 6);
    assert(R"delimiter((a|b))delimiter"[0] == '(');
    assert(R"delimiter((a|b))delimiter"[1] == 'a');
    assert(R"delimiter((a|b))delimiter"[2] == '|');
    assert(R"delimiter((a|b))delimiter"[3] == 'b');
    assert(R"delimiter((a|b))delimiter"[4] == ')');
    assert(R"delimiter((a|b))delimiter"[5] == '\0');
}

PASS_CASE_MAIN_FUNCTION
