#include "004.h"

#define ALIGNMENT 128

template <class T>
    struct alignas(T) X { char __; };
template <class T>
    struct alignas(alignof(T)) Y { char __; };
    
struct alignas(ALIGNMENT) Z { char __; };

static_assert(alignof(X<char>) == alignof(Y<char>), "error");
static_assert(alignof(X<int>) == alignof(Y<int>), "error");
static_assert(alignof(X<long>) == alignof(Y<long>), "error");
static_assert(alignof(X<long double>) == alignof(Y<long double>), "error");
static_assert(alignof(X<Z>) == alignof(Y<Z>), "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
