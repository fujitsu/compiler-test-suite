#include "004.h"

#if __GNUC__
struct alignas(8) alignas(4) alignas(16) X { char __; };
#else
struct alignas(8) alignas(16) alignas(4) X { char __; };
#endif
static_assert(alignof(X) == 16, "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
