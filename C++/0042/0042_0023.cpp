#include "004.h"

typedef unsigned long size_t;
#define ALIGNMENT 128

template <class...Pack>
struct X
{
    alignas(Pack...) int x;
};

static_assert(alignof(X<char, int>) == sizeof(int), "error");
static_assert(alignof(X<char, int, double>) == sizeof(double), "error");
static_assert(alignof(X<char, long double, double>) == sizeof(long double), "error");

template <size_t...args>
struct Y
{
    alignas(args...) int y;
};

static_assert(alignof(Y<ALIGNMENT, ALIGNMENT * 2>) == ALIGNMENT * 2, "error");
static_assert(alignof(Y<ALIGNMENT * 4, ALIGNMENT, ALIGNMENT * 2>) == ALIGNMENT * 4, "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
