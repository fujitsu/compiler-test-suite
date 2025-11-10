#include "004.h"

static_assert(alignof(char&)        == sizeof(char), "error");
static_assert(alignof(short&)       == sizeof(short), "error");
static_assert(alignof(int&)         == sizeof(int), "error");
static_assert(alignof(double&)      == sizeof(double), "error");
static_assert(alignof(long double&) == sizeof(long double), "error");

static_assert(alignof(const char&)        == sizeof(char), "error");
static_assert(alignof(const short&)       == sizeof(short), "error");
static_assert(alignof(const int&)         == sizeof(int), "error");
static_assert(alignof(const double&)      == sizeof(double), "error");
static_assert(alignof(const long double&) == sizeof(long double), "error");

static_assert(alignof(volatile char&)        == sizeof(char), "error");
static_assert(alignof(volatile short&)       == sizeof(short), "error");
static_assert(alignof(volatile int&)         == sizeof(int), "error");
static_assert(alignof(volatile double&)      == sizeof(double), "error");
static_assert(alignof(volatile long double&) == sizeof(long double), "error");

static_assert(alignof(const volatile char&)        == sizeof(char), "error");
static_assert(alignof(const volatile short&)       == sizeof(short), "error");
static_assert(alignof(const volatile int&)         == sizeof(int), "error");
static_assert(alignof(const volatile double&)      == sizeof(double), "error");
static_assert(alignof(const volatile long double&) == sizeof(long double), "error");

static_assert(alignof(char[11])        == sizeof(char), "error");
static_assert(alignof(short[11])       == sizeof(short), "error");
static_assert(alignof(int[11])         == sizeof(int), "error");
static_assert(alignof(double[11])      == sizeof(double), "error");
static_assert(alignof(long double[11]) == sizeof(long double), "error");

struct alignas(32) X { char __; };
static_assert(alignof(X) == 32, "error");
static_assert(alignof(X&) == 32, "error");
static_assert(alignof(const X&) == 32, "error");
static_assert(alignof(volatile X&) == 32, "error");
static_assert(alignof(const volatile X&) == 32, "error");
static_assert(alignof(X[11]) == 32, "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
