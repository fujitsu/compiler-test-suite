#include "public3/004.h"

struct NonTrivalMoveAssi
{
    NonTrivalMoveAssi& operator=(NonTrivalMoveAssi&&) { return *this; }
};

union U
{
    NonTrivalMoveAssi ntma;
    U& operator=(U&&) { return *this; }
};

void test()
{
    U u1, u2;
    u1 = static_cast<U&&>(u2);
}

PASS_CASE_MAIN_FUNCTION
