#include "public2/004.h"
#include "public2/005.h"




template <class _Tp> struct is_standard_layout
    : public integral_constant<bool, __is_standard_layout(_Tp)>
{};

struct StdLayoutClass1 {};
struct StdLayoutClass2 { void foo() {} };
struct StdLayoutClass3 : StdLayoutClass2 { };

static_assert(is_standard_layout<StdLayoutClass1>::value, "error");
static_assert(is_standard_layout<StdLayoutClass2>::value, "error");
static_assert(is_standard_layout<StdLayoutClass3>::value, "error");

struct NonStdLayoutClass1 { virtual void foo() {} };
struct NonStdLayoutClass2 : virtual StdLayoutClass1 { };
struct NonStdLayoutClass3 : NonStdLayoutClass1 { };

static_assert(!is_standard_layout<NonStdLayoutClass1>::value, "error");
static_assert(!is_standard_layout<NonStdLayoutClass2>::value, "error");
static_assert(!is_standard_layout<NonStdLayoutClass3>::value, "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
