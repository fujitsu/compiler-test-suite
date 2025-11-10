#include "public2/004.h"
#include "public2/005.h"





template <class _Tp> struct is_trivial
    : public integral_constant<bool, __is_trivial(_Tp)>
{};

template <class _Tp> struct is_trivially_copyable
    : public integral_constant<bool, __is_trivially_copyable(_Tp)>
{};

struct TrivialDtor1 {};
struct TrivialDtor2
{
    TrivialDtor2() = default; 
    ~TrivialDtor2() = default;
};
struct TrivialDtor3
{
    TrivialDtor3() {} 
    ~TrivialDtor3() = default; 
};
struct TrivialDtor4 : public TrivialDtor1 {};
struct TrivialDtor5 { TrivialDtor1 member; };

static_assert(is_trivially_copyable<TrivialDtor1>::value, "error");
static_assert(is_trivially_copyable<TrivialDtor2>::value, "error");
static_assert(is_trivially_copyable<TrivialDtor3>::value, "error");
static_assert(is_trivially_copyable<TrivialDtor4>::value, "error");
static_assert(is_trivially_copyable<TrivialDtor5>::value, "error");

struct NonTrivialDtor1 { ~NonTrivialDtor1() {} };
struct NonTrivialDtor2 { virtual ~NonTrivialDtor2() = default; };
struct NonTrivialDtor3 : virtual TrivialDtor1 { };
struct NonTrivialDtor4 : public NonTrivialDtor1 { };
struct NonTrivialDtor5 { NonTrivialDtor1 member; };

static_assert(!is_trivially_copyable<NonTrivialDtor1>::value, "error");
static_assert(!is_trivially_copyable<NonTrivialDtor2>::value, "error");
static_assert(!is_trivially_copyable<NonTrivialDtor3>::value, "error");
static_assert(!is_trivially_copyable<NonTrivialDtor4>::value, "error");
static_assert(!is_trivially_copyable<NonTrivialDtor5>::value, "error");


static_assert( is_trivial<TrivialDtor1>::value, "error");
static_assert( is_trivial<TrivialDtor2>::value, "error");
static_assert(!is_trivial<TrivialDtor3>::value, "error");
static_assert( is_trivial<TrivialDtor4>::value, "error");
static_assert( is_trivial<TrivialDtor5>::value, "error");

static_assert(!is_trivial<NonTrivialDtor1>::value, "error");
static_assert(!is_trivial<NonTrivialDtor2>::value, "error");
static_assert(!is_trivial<NonTrivialDtor3>::value, "error");
static_assert(!is_trivial<NonTrivialDtor4>::value, "error");
static_assert(!is_trivial<NonTrivialDtor5>::value, "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
