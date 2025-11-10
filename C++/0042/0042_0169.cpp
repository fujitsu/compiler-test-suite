#include "./004.h"
#include "./005.h"




template <class _Tp> struct is_standard_layout
    : public integral_constant<bool, __is_standard_layout(_Tp)>
{};

struct StdLayoutClass1 { int x, y; };
struct StdLayoutClass2 { protected: int x, y; };
struct StdLayoutClass3
{
private:
    int x, y;
public:
    static const int z = 0;
};

static_assert(is_standard_layout<StdLayoutClass1>::value, "error");
static_assert(is_standard_layout<StdLayoutClass2>::value, "error");
static_assert(is_standard_layout<StdLayoutClass3>::value, "error");

struct NonStdLayoutClass
{
    int x;
private:
    int y;
};

static_assert(!is_standard_layout<NonStdLayoutClass>::value, "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
