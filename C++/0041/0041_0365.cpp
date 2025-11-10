#include "public3/004.h"

constexpr int f(void *) { return 1; }
constexpr int f(...)    { return 2; }
constexpr int g1()      { return f(0); }   
constexpr int g2(int n) { return f(n); }   
constexpr int g3(int n) { return f(n*0); } 

namespace N {
    constexpr int c = 5;
    constexpr int h() { return c; }
}
constexpr int c = 0;
constexpr int g4() { return N::h(); }

static_assert(f(0)  == 1, "error");
static_assert(f(1)  == 2, "error");
static_assert(g1()  == 1, "error");
static_assert(g2(0) == 2, "error");
static_assert(g2(1) == 2, "error");
static_assert(g3(0) == 2, "error");
static_assert(g3(1) == 2, "error");
static_assert(g4()  == 5, "error");

constexpr int x = 2;

constexpr int h2()      { return 1 || x; } 
constexpr int h3(int a) { return a || x; } 
constexpr int h4()      { return 0 && x; } 

constexpr int h6(int a) { return a && x; } 


constexpr int y2 = h3(1);   
constexpr int y3 = h6(0);   


struct Z
{
    constexpr Z() {}
    constexpr operator int() { return 1; }
} z;
constexpr int i1(int n) { return n; }
constexpr int i2()      { return z; }
static_assert(i1(z) == 1, "error");
static_assert(i2( ) == 1, "error");

constexpr int j(bool b) { return b ? throw 0 : 0; }

void test() {}

PASS_CASE_MAIN_FUNCTION
