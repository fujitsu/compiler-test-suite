#include "public2/004.h"

struct X {
    constexpr operator bool() { return true; }
};

X x;
const int y = 1;

void f() noexcept(0);
void h() noexcept(x);
void j() noexcept(y);

void test() {}

PASS_CASE_MAIN_FUNCTION
