#include "public2/004.h"

struct NonTrivalMoveCtor
{
    NonTrivalMoveCtor(NonTrivalMoveCtor&&) {}
};

union U
{
    NonTrivalMoveCtor ntmc;
    U(){}
    U(U&&) {}
};

void test()
{
    U _u;
    U u = static_cast<U&&>(_u);
}

PASS_CASE_MAIN_FUNCTION
