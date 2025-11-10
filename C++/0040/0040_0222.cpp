#include "public1/004.h"
#include "002.h"

struct Object {};

namespace case1
{
    void test()
    {
        assert(sizeof(__test(const_cast<Object&&>(prvalue<Object>()))) == sizeof(two));
        assert(sizeof(__test(const_cast<Object&&>(xvalue<Object>()))) == sizeof(two));
        assert(sizeof(__test(const_cast<Object&&>(lvalue<Object>()))) == sizeof(two));
    }
}

namespace case2
{
    one __test(Object&&);
    two __test(const Object&&);
    void test()
    {
        assert(sizeof(__test(const_cast<Object&&>(prvalue<const Object>()))) == sizeof(one));
        assert(sizeof(__test(const_cast<Object&&>(xvalue<const Object>()))) == sizeof(one));
        assert(sizeof(__test(const_cast<Object&&>(lvalue<const Object>()))) == sizeof(one));
    }
}

void test()
{
    case1::test();
    case2::test();
}

PASS_CASE_MAIN_FUNCTION
