#include "004.h"

static_assert(alignof(char)        == sizeof(char), "error");
static_assert(alignof(short)       == sizeof(short), "error");
static_assert(alignof(int)         == sizeof(int), "error");
static_assert(alignof(double)      == sizeof(double), "error");
static_assert(alignof(long double) == sizeof(long double), "error");

struct alignas(32) X { char __; };
static_assert(alignof(X) == 32, "error");



void test() {}

PASS_CASE_MAIN_FUNCTION
