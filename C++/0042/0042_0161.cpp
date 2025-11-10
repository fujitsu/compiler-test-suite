#include "./004.h"
#include "./005.h"
using namespace std;






template <class _Tp> struct is_trivial
    : public integral_constant<bool, __is_trivial(_Tp)>
{};

template <class _Tp> struct is_standard_layout
    : public integral_constant<bool, __is_standard_layout(_Tp)>
{};

template <class _Tp> struct is_pod
    : public integral_constant<bool, __is_pod(_Tp)>
{};


struct TSL1 {};
struct TSL2
{
    TSL2() = default;
    TSL2(const TSL2&) = default;
    TSL2& operator =(const TSL2&) = default;
    TSL2(TSL2&&) = default;
    TSL2& operator =(TSL2&&) = default;
    ~TSL2() = default;
};
struct TSL3 : public TSL1 { int x, y, z; };
struct TSL4 : public TSL3 {};
union TSL5 {};
union TSL6
{
    TSL6() = default;
    TSL1 tsl1;
    TSL3 tsl3;
    TSL5 stl5;
};

static_assert(is_trivial<TSL1>::value, "error");
static_assert(is_trivial<TSL2>::value, "error");
static_assert(is_trivial<TSL3>::value, "error");
static_assert(is_trivial<TSL4>::value, "error");
static_assert(is_trivial<TSL5>::value, "error");
static_assert(is_trivial<TSL6>::value, "error");

static_assert(is_standard_layout<TSL1>::value, "error");
static_assert(is_standard_layout<TSL2>::value, "error");
static_assert(is_standard_layout<TSL3>::value, "error");
static_assert(is_standard_layout<TSL4>::value, "error");
static_assert(is_standard_layout<TSL5>::value, "error");
static_assert(is_standard_layout<TSL6>::value, "error");

static_assert(is_pod<TSL1>::value, "error");
static_assert(is_pod<TSL2>::value, "error");
static_assert(is_pod<TSL3>::value, "error");
static_assert(is_pod<TSL4>::value, "error");
static_assert(is_pod<TSL5>::value, "error");
static_assert(is_pod<TSL6>::value, "error");


struct TNSL1 
{
    int x;
private:
    int y;
};
struct TNSL2 : TSL3 { int n; };
struct TNSL3 : TNSL1 { };
struct TNSL4 { TNSL1 __; };
union TNSL5 { TNSL1 __; };
union TNSL6 { TNSL5 __; };

static_assert(is_trivial<TNSL1>::value, "error");
static_assert(is_trivial<TNSL2>::value, "error");
static_assert(is_trivial<TNSL3>::value, "error");
static_assert(is_trivial<TNSL4>::value, "error");
static_assert(is_trivial<TNSL5>::value, "error");
static_assert(is_trivial<TNSL6>::value, "error");

static_assert(!is_standard_layout<TNSL1>::value, "error");
static_assert(!is_standard_layout<TNSL2>::value, "error");
static_assert(!is_standard_layout<TNSL3>::value, "error");
static_assert(!is_standard_layout<TNSL4>::value, "error");
static_assert(!is_standard_layout<TNSL5>::value, "error");
static_assert(!is_standard_layout<TNSL6>::value, "error");

static_assert(!is_pod<TNSL1>::value, "error");
static_assert(!is_pod<TNSL2>::value, "error");
static_assert(!is_pod<TNSL3>::value, "error");
static_assert(!is_pod<TNSL4>::value, "error");
static_assert(!is_pod<TNSL5>::value, "error");
static_assert(!is_pod<TNSL6>::value, "error");


struct NTSL1 { NTSL1(){} };
struct NTSL2 : NTSL1 { int x, y, z; };
struct NTSL3 { NTSL1 __; };
union NTSL4 { ~NTSL4() {}; };
union NTSL5 { NTSL4 __; };

static_assert(!is_trivial<NTSL1>::value, "error");
static_assert(!is_trivial<NTSL2>::value, "error");
static_assert(!is_trivial<NTSL3>::value, "error");
static_assert(!is_trivial<NTSL4>::value, "error");
static_assert(!is_trivial<NTSL5>::value, "error");

static_assert(is_standard_layout<NTSL1>::value, "error");
static_assert(is_standard_layout<NTSL2>::value, "error");
static_assert(is_standard_layout<NTSL3>::value, "error");
static_assert(is_standard_layout<NTSL4>::value, "error");
static_assert(is_standard_layout<NTSL5>::value, "error");

static_assert(!is_pod<NTSL1>::value, "error");
static_assert(!is_pod<NTSL2>::value, "error");
static_assert(!is_pod<NTSL3>::value, "error");
static_assert(!is_pod<NTSL4>::value, "error");


struct NTNSL1 { virtual ~NTNSL1(){} };
struct NTNSL2 : virtual TSL1 {};
struct NTNSL3 : TNSL1 { NTNSL3(){} };
struct NTNSL4 : NTSL1 { TNSL1 __; };
union NTNSL5 { NTNSL1 __; };
union NTNSL6 { NTNSL5 __; };

static_assert(!is_trivial<NTNSL1>::value, "error");
static_assert(!is_trivial<NTNSL2>::value, "error");
static_assert(!is_trivial<NTNSL3>::value, "error");
static_assert(!is_trivial<NTNSL4>::value, "error");
static_assert(!is_trivial<NTNSL5>::value, "error");
static_assert(!is_trivial<NTNSL6>::value, "error");

static_assert(!is_standard_layout<NTNSL1>::value, "error");
static_assert(!is_standard_layout<NTNSL2>::value, "error");
static_assert(!is_standard_layout<NTNSL3>::value, "error");
static_assert(!is_standard_layout<NTNSL4>::value, "error");
static_assert(!is_standard_layout<NTNSL5>::value, "error");
static_assert(!is_standard_layout<NTNSL6>::value, "error");

static_assert(!is_pod<NTNSL1>::value, "error");
static_assert(!is_pod<NTNSL2>::value, "error");
static_assert(!is_pod<NTNSL3>::value, "error");
static_assert(!is_pod<NTNSL4>::value, "error");
static_assert(!is_pod<NTNSL5>::value, "error");
static_assert(!is_pod<NTNSL6>::value, "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
