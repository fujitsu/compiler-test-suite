#include "./004.h"

struct B { virtual ~B(){} };
struct D : B {};

B* pb = 0;

static_assert( noexcept(dynamic_cast<D*>(pb)), "error");
static_assert(!noexcept(dynamic_cast<D&>(*pb)), "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
