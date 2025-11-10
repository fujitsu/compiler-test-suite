#include "./004.h"
#include "./005.h"




template <class _Tp> struct is_standard_layout
    : public integral_constant<bool, __is_standard_layout(_Tp)>
{};

struct StdLayoutClass1 {};
struct StdLayoutClass2 : StdLayoutClass1 {};

static_assert(is_standard_layout<StdLayoutClass1>::value, "error");
static_assert(is_standard_layout<StdLayoutClass2>::value, "error");

struct NonStdLayoutClass1 { virtual void foo() {} };
struct NonStdLayoutClass2 : virtual StdLayoutClass1 { };
struct NonStdLayoutClass3 { NonStdLayoutClass1 array[4]; };
struct NonStdLayoutClass4 : NonStdLayoutClass1 {}; 
struct NonStdLayoutClass5 : NonStdLayoutClass2 {};
struct NonStdLayoutClass6 : NonStdLayoutClass3 {};

static_assert(!is_standard_layout<NonStdLayoutClass1>::value, "error");
static_assert(!is_standard_layout<NonStdLayoutClass2>::value, "error");
static_assert(!is_standard_layout<NonStdLayoutClass3>::value, "error");
static_assert(!is_standard_layout<NonStdLayoutClass4>::value, "error");
static_assert(!is_standard_layout<NonStdLayoutClass5>::value, "error");
static_assert(!is_standard_layout<NonStdLayoutClass6>::value, "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
