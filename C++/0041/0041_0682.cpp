#include "public3/004.h"
#include "public3/005.h"

using PFunType = void(*)(int);
namespace ns_test
{
    using PFunType = void(*)(int);
}

class cls_test
{
public:
    using PFunType = void(*)(int);
    class cls_nest
    {
    public:
        using PFunType = void(*)(int);
    };
};

void test()
{
    using PFunType = void(*)(int);
    static_assert((is_same<PFunType, void(*)(int)>::value), "not expected type");
    static_assert((is_same<ns_test::PFunType, void(*)(int)>::value), "not expected type");
    static_assert((is_same<cls_test::PFunType, void(*)(int)>::value), "not expected type");
    static_assert((is_same<cls_test::cls_nest::PFunType, void(*)(int)>::value), "not expected type");
}

PASS_CASE_MAIN_FUNCTION
