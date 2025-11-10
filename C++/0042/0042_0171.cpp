#include "./004.h"
#include "./005.h"




template <class _Tp> struct is_standard_layout
    : public integral_constant<bool, __is_standard_layout(_Tp)>
{};

struct Base1 { int x; };
struct Base2 {};
struct Base3 : public Base1 {};
struct Base4 : public Base2 {};
struct Base5 { int y; };

struct StdLayoutClass1 : Base1, Base2 {};
struct StdLayoutClass2 : Base4 { protected: int x, y; };

static_assert(is_standard_layout<StdLayoutClass1>::value, "error");
static_assert(is_standard_layout<StdLayoutClass2>::value, "error");

struct NonStdLayoutClass1: Base3, Base5 { };
struct NonStdLayoutClass2: Base1, Base2 { int z; };

static_assert(!is_standard_layout<NonStdLayoutClass1>::value, "error");
static_assert(!is_standard_layout<NonStdLayoutClass2>::value, "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
