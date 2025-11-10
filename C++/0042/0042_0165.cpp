#include "./004.h"
#include "./005.h"





template <class _Tp> struct is_trivial
    : public integral_constant<bool, __is_trivial(_Tp)>
{};

template <class _Tp> struct is_trivially_copyable
    : public integral_constant<bool, __is_trivially_copyable(_Tp)>
{};

struct TrivialMoveCtor1 {};
struct TrivialMoveCtor2
{
    TrivialMoveCtor2() = default; 
    TrivialMoveCtor2& operator =(TrivialMoveCtor2&&) = default; 
};
struct TrivialMoveCtor3
{
    TrivialMoveCtor3() {} 
    TrivialMoveCtor3& operator =(TrivialMoveCtor3&&) = default; 
};
struct TrivialMoveCtor4 : public TrivialMoveCtor1 {};
struct TrivialMoveCtor5 { TrivialMoveCtor1 member; };

static_assert(is_trivially_copyable<TrivialMoveCtor1>::value, "error");
static_assert(is_trivially_copyable<TrivialMoveCtor2>::value, "error");
static_assert(is_trivially_copyable<TrivialMoveCtor3>::value, "error");
static_assert(is_trivially_copyable<TrivialMoveCtor4>::value, "error");
static_assert(is_trivially_copyable<TrivialMoveCtor5>::value, "error");

struct NonTrivialMoveCtor1 { NonTrivialMoveCtor1& operator =(NonTrivialMoveCtor1&&){ return *this; } };
struct NonTrivialMoveCtor2 { virtual ~NonTrivialMoveCtor2(){} };
struct NonTrivialMoveCtor3 : virtual TrivialMoveCtor1 { };
struct NonTrivialMoveCtor4 : public NonTrivialMoveCtor1 { };
struct NonTrivialMoveCtor5 { NonTrivialMoveCtor1 member; };

static_assert(!is_trivially_copyable<NonTrivialMoveCtor1>::value, "error");
static_assert(!is_trivially_copyable<NonTrivialMoveCtor2>::value, "error");
static_assert(!is_trivially_copyable<NonTrivialMoveCtor3>::value, "error");
static_assert(!is_trivially_copyable<NonTrivialMoveCtor4>::value, "error");
static_assert(!is_trivially_copyable<NonTrivialMoveCtor5>::value, "error");


static_assert( is_trivial<TrivialMoveCtor1>::value, "error");
static_assert( is_trivial<TrivialMoveCtor2>::value, "error");
static_assert(!is_trivial<TrivialMoveCtor3>::value, "error");
static_assert( is_trivial<TrivialMoveCtor4>::value, "error");
static_assert( is_trivial<TrivialMoveCtor5>::value, "error");

static_assert(!is_trivial<NonTrivialMoveCtor1>::value, "error");
static_assert(!is_trivial<NonTrivialMoveCtor2>::value, "error");
static_assert(!is_trivial<NonTrivialMoveCtor3>::value, "error");
static_assert(!is_trivial<NonTrivialMoveCtor4>::value, "error");
static_assert(!is_trivial<NonTrivialMoveCtor5>::value, "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
