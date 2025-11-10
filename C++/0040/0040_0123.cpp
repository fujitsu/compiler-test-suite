#include "public1/004.h"
#include "public1/005.h"

struct Object {};

void test()
{
    {
        extern Object &lvalue();
        assert((is_same<decltype(lvalue())&, Object&>::value == true));
        assert((is_same<const decltype(lvalue())&, Object&>::value == true));
        assert((is_same<volatile decltype(lvalue())&, Object&>::value == true));
        assert((is_same<const volatile decltype(lvalue())&, Object&>::value == true));
    }

    {
        extern Object &lvalue();
        assert((is_same<decltype(lvalue())&&, Object&>::value == true));
        assert((is_same<const decltype(lvalue())&&, Object&>::value == true));
        assert((is_same<volatile decltype(lvalue())&&, Object&>::value == true));
        assert((is_same<const volatile decltype(lvalue())&&, Object&>::value == true));
    }

    {
        extern Object &&xvalue();
        assert((is_same<decltype(xvalue())&, Object&>::value == true));
        assert((is_same<const decltype(xvalue())&, Object&>::value == true));
        assert((is_same<volatile decltype(xvalue())&, Object&>::value == true));
        assert((is_same<const volatile decltype(xvalue())&, Object&>::value == true));
    }

    {
        extern Object &&xvalue();
        assert((is_same<decltype(xvalue())&&, Object&&>::value == true));
        assert((is_same<const decltype(xvalue())&&, Object&&>::value == true));
        assert((is_same<volatile decltype(xvalue())&&, Object&&>::value == true));
        assert((is_same<const volatile decltype(xvalue())&&, Object&&>::value == true));
    }
}

PASS_CASE_MAIN_FUNCTION
