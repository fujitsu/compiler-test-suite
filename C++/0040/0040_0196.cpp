#include "public2/004.h"

static_assert(!noexcept(throw 0), "error");
static_assert(!noexcept((throw 0, 1)), "error");
static_assert(!noexcept((false ? 0 : throw 1)), "error");
static_assert(!noexcept((true ? 0 : throw 1)), "error");
static_assert(!noexcept((false ? throw 0 : 1)), "error");
static_assert(!noexcept((true ? throw 0 : 1)), "error");
static_assert( noexcept(sizeof((throw 0, 1))), "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
