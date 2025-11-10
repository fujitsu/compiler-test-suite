#include "public3/004.h"


const char *p1 =
R"a(
)\
a"
)a";

const char *p2 = R"(??)";

const char *p3 =
R"#(
)??="
)#";

void test()
{
    assert(p1[0] == '\n');
    assert(p1[1] == ')');
    assert(p1[2] == '\\');
    assert(p1[3] == '\n');
    assert(p1[4] == 'a');
    assert(p1[5] == '\"');
    assert(p1[6] == '\n');
    assert(p1[7] == '\0');
    
    assert(p2[0] == '\?');
    assert(p2[1] == '\?');
    assert(p2[2] == '\0');
    
    assert(p3[0] == '\n');
    assert(p3[1] == ')');
    assert(p3[2] == '\?');
    assert(p3[3] == '\?');
    assert(p3[4] == '=');
    assert(p3[5] == '\"');
    assert(p3[6] == '\n');
    assert(p3[7] == '\0');
}

PASS_CASE_MAIN_FUNCTION
