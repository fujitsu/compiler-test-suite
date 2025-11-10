#include "public3/004.h"
#include "public3/005.h"

template <class T, int N>
void foo(T(&)[N]) {}


const char16_t* su1 = u"ab";
const char16_t* su2 = "a" u"b";
const char16_t* su3 = u"a" "b";
const char16_t* su4 = u"a" u"b";

void f()
{
    foo<const char16_t, 3>(u"ab");
    foo<const char16_t, 3>( "a" 
                           u"b");
    foo<const char16_t, 3>( "a" 
                           u"b");
    foo<const char16_t, 3>(u"a" 
                           u"b");
};

static_assert(u"ab"    [0] == u'a',  "error");
static_assert(u"ab"    [1] == u'b',  "error");
static_assert(u"ab"    [2] == u'\0', "error");
static_assert( "a" u"b"[0] == u'a',  "error");
static_assert( "a" u"b"[1] == u'b',  "error");
static_assert( "a" u"b"[2] == u'\0', "error");
static_assert(u"a"  "b"[0] == u'a',  "error");
static_assert(u"a"  "b"[1] == u'b',  "error");
static_assert(u"a"  "b"[2] == u'\0', "error");
static_assert(u"a" u"b"[0] == u'a',  "error");
static_assert(u"a" u"b"[1] == u'b',  "error");
static_assert(u"a" u"b"[2] == u'\0', "error");


const char32_t* sU1 = U"ab";
const char32_t* sU2 = "a"   U"b";
const char32_t* sU3 = U"a"   "b";
const char32_t* sU4 = U"a"  U"b";

void g()
{
    foo<const char32_t, 3>(U"ab");
    foo<const char32_t, 3>( "a"
                            U"b");
    foo<const char32_t, 3>( "a" 
                           U"b");
    foo<const char32_t, 3>(U"a" 
                           U"b");
};

static_assert(U"ab"    [0] == U'a',  "error");
static_assert(U"ab"    [1] == U'b',  "error");
static_assert(U"ab"    [2] == U'\0', "error");
static_assert( "a" U"b"[0] == U'a',  "error");
static_assert( "a" U"b"[1] == U'b',  "error");
static_assert( "a" U"b"[2] == U'\0', "error");
static_assert(U"a"  "b"[0] == U'a',  "error");
static_assert(U"a"  "b"[1] == U'b',  "error");
static_assert(U"a"  "b"[2] == U'\0', "error");
static_assert(U"a" U"b"[0] == U'a',  "error");
static_assert(U"a" U"b"[1] == U'b',  "error");
static_assert(U"a" U"b"[2] == U'\0', "error");


static_assert((is_same<decltype(uR"_{a}[1]#<B>:;.?(a\"b)_{a}[1]#<B>:;.?"), const char16_t(&)[5]>::value), "error");
static_assert(uR"_{a}[1]#<B>:;.?(a\"b)_{a}[1]#<B>:;.?"[0] == u'a',  "error");
static_assert(uR"_{a}[1]#<B>:;.?(a\"b)_{a}[1]#<B>:;.?"[1] == u'\\', "error");
static_assert(uR"_{a}[1]#<B>:;.?(a\"b)_{a}[1]#<B>:;.?"[2] == u'\"', "error");
static_assert(uR"_{a}[1]#<B>:;.?(a\"b)_{a}[1]#<B>:;.?"[3] == u'b',  "error");
static_assert(uR"_{a}[1]#<B>:;.?(a\"b)_{a}[1]#<B>:;.?"[4] == u'\0', "error");
static_assert((is_same<decltype(UR"+-*/%^&|~!=,"'x(a\"b)+-*/%^&|~!=,"'x"), const char32_t(&)[5]>::value), "error");
static_assert(UR""'+-*/%^&|~!=,x(a\"b)"'+-*/%^&|~!=,x"[0] == U'a',  "error");
static_assert(UR""'+-*/%^&|~!=,x(a\"b)"'+-*/%^&|~!=,x"[1] == U'\\', "error");
static_assert(UR""'+-*/%^&|~!=,x(a\"b)"'+-*/%^&|~!=,x"[2] == U'\"', "error");
static_assert(UR""'+-*/%^&|~!=,x(a\"b)"'+-*/%^&|~!=,x"[3] == U'b',  "error");
static_assert(UR""'+-*/%^&|~!=,x(a\"b)"'+-*/%^&|~!=,x"[4] == U'\0', "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
