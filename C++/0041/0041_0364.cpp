#include "public3/004.h"

namespace ns_test
{
    struct LiteralClass {};
    struct NonLiteralClass { virtual ~NonLiteralClass(){} } non_literal;
}

constexpr int f(int) = delete;
class LiteralClass
{
public:
    constexpr LiteralClass() {}
    constexpr LiteralClass(const LiteralClass&) = default;
    constexpr LiteralClass& operator =(const LiteralClass&) = delete;
    constexpr operator int() { return 2; }
};

constexpr LiteralClass x;
constexpr int m = 3;

constexpr int f(int, LiteralClass, ns_test::NonLiteralClass&)
{
    ; ; ; ; ; ; ; ; ; ; ; ; ; ;        
    static_assert(true, "error");      
    typedef unsigned int UInt;         
    using uint_t = UInt;               
    using ns_test::LiteralClass;       
    using namespace ns_test;           
    return (::LiteralClass() + x * m); 
}

constexpr int y = f(0, x, ns_test::non_literal);
static_assert(y == 8, "error");

constexpr int g(int x, int y)
{
    return x > y ? x : throw 0;
}

constexpr int z = g(x, 1);
static_assert(z == 2, "error");


void test() {}

PASS_CASE_MAIN_FUNCTION
