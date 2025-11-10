#include "public2/004.h"

struct LiteralClass {} literal;
struct NonLiteralClass { virtual ~NonLiteralClass(){} } non_literal;


template <class T>
constexpr T TmplFun(T t);


template <class T>
constexpr T TmplFun(T t) { return t; }


template <>
LiteralClass TmplFun(LiteralClass) { return LiteralClass(); }

void test()
{
    TmplFun(1);
    TmplFun(literal);
    TmplFun(non_literal);
}

PASS_CASE_MAIN_FUNCTION
