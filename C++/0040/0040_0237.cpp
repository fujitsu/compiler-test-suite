#include "public2/004.h"
#include "public2/005.h"





template <class _Tp> struct is_trivial
    : public integral_constant<bool, __is_trivial(_Tp)>
{};

template <class _Tp> struct is_trivially_copyable
    : public integral_constant<bool, __is_trivially_copyable(_Tp)>
{};

struct TrivialCopyCtor1 {};
struct TrivialCopyCtor2
{
    TrivialCopyCtor2() = default; 
    TrivialCopyCtor2(const TrivialCopyCtor2&) = default; 
};
struct TrivialCopyCtor3
{
    TrivialCopyCtor3() {} 
    TrivialCopyCtor3(const TrivialCopyCtor3&) = default; 
};
struct TrivialCopyCtor4 : public TrivialCopyCtor1 {};
struct TrivialCopyCtor5 { TrivialCopyCtor1 member; };

static_assert(is_trivially_copyable<TrivialCopyCtor1>::value, "error");
static_assert(is_trivially_copyable<TrivialCopyCtor2>::value, "error");
static_assert(is_trivially_copyable<TrivialCopyCtor3>::value, "error");
static_assert(is_trivially_copyable<TrivialCopyCtor4>::value, "error");
static_assert(is_trivially_copyable<TrivialCopyCtor5>::value, "error");

struct NonTrivialCopyCtor1 { NonTrivialCopyCtor1(const NonTrivialCopyCtor1&){} };
struct NonTrivialCopyCtor2 { virtual ~NonTrivialCopyCtor2(){} };
struct NonTrivialCopyCtor3 : virtual TrivialCopyCtor1 { };
struct NonTrivialCopyCtor4 : public NonTrivialCopyCtor1 { };
struct NonTrivialCopyCtor5 { NonTrivialCopyCtor1 member; };

static_assert(!is_trivially_copyable<NonTrivialCopyCtor1>::value, "error");
static_assert(!is_trivially_copyable<NonTrivialCopyCtor2>::value, "error");
static_assert(!is_trivially_copyable<NonTrivialCopyCtor3>::value, "error");
static_assert(!is_trivially_copyable<NonTrivialCopyCtor4>::value, "error");
static_assert(!is_trivially_copyable<NonTrivialCopyCtor5>::value, "error");


static_assert( is_trivial<TrivialCopyCtor1>::value, "error");
static_assert( is_trivial<TrivialCopyCtor2>::value, "error");
static_assert(!is_trivial<TrivialCopyCtor3>::value, "error");
static_assert( is_trivial<TrivialCopyCtor4>::value, "error");
static_assert( is_trivial<TrivialCopyCtor5>::value, "error");

static_assert(!is_trivial<NonTrivialCopyCtor1>::value, "error");
static_assert(!is_trivial<NonTrivialCopyCtor2>::value, "error");
static_assert(!is_trivial<NonTrivialCopyCtor3>::value, "error");
static_assert(!is_trivial<NonTrivialCopyCtor4>::value, "error");
static_assert(!is_trivial<NonTrivialCopyCtor5>::value, "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
