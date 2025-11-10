
#include "public2/004.h"


const char *p = R"(a\
b
c)";

void test()
{
    assert(p[0] == 'a');
    assert(p[1] == '\\');
    assert(p[2] == '\n');
    assert(p[3] == 'b');
    assert(p[4] == '\n');
    assert(p[5] == 'c');
    assert(p[6] == '\0');
}

PASS_CASE_MAIN_FUNCTION
