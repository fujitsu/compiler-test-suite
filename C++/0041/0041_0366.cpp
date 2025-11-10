#include "public3/004.h"
#include "public3/005.h"

struct LiteralClass {};
struct NonLiteralClass { virtual ~NonLiteralClass(){} };

namespace normal_fun_tmpl
{
    template <class T>
    constexpr T f() { return T(); }

    constexpr int i = f<int>();
    constexpr LiteralClass literal = f<LiteralClass>();
    
    NonLiteralClass non_literal2 = f<NonLiteralClass>(); 
}

namespace member_fun_of_class_tmpl
{
    class B {};

    template <class T>
    class C : conditional< is_class<T>::value, T, B >::type
    {
    public:
        constexpr C() {}
        constexpr T mf() { return T(); }
    };

    constexpr C<int> ci = {};
    constexpr C<LiteralClass> clc = {};
    
    C<NonLiteralClass> cnlc2 = {}; 

    constexpr int i = ci.mf();
    constexpr LiteralClass literal = clc.mf();
    
    NonLiteralClass non_literal2 = cnlc2.mf();
}

void test() {}

PASS_CASE_MAIN_FUNCTION
