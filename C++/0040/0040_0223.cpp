#include "public1/004.h"
#include "public1/005.h"

struct Object {};


namespace case1
{
    void test()
    {
        {
            typedef Object& TR;
            assert((is_same<TR&&, Object&>::value == true));
            assert((is_same<const TR&&, Object&>::value == true));
            assert((is_same<volatile TR&&, Object&>::value == true));
            assert((is_same<const volatile TR&&, Object&>::value == true));
        }

        {
            typedef Object&& TR;
            assert((is_same<TR&, Object&>::value == true));
            assert((is_same<const TR&, Object&>::value == true));
            assert((is_same<volatile TR&, Object&>::value == true));
            assert((is_same<const volatile TR&, Object&>::value == true));
        }

        {
            typedef Object&& TR;
            assert((is_same<TR&&, Object&&>::value == true));
            assert((is_same<const TR&&, Object&&>::value == true));
            assert((is_same<volatile TR&&, Object&&>::value == true));
            assert((is_same<const volatile TR&&, Object&&>::value == true));
        }
    }
}


namespace case2
{
    template <class TR>
    void __lvalue_reference_tmpl_param(typename enable_if<is_same<TR, Object&>::value, void*>::type = 0)
    {
        assert((is_same<TR&&, Object&>::value == true));
        assert((is_same<const TR&&, Object&>::value == true));
        assert((is_same<volatile TR&&, Object&>::value == true));
        assert((is_same<const volatile TR&&, Object&>::value == true));
    }
    template <class TR>
    void __rvalue_reference_tmpl_param(typename enable_if<is_same<TR, Object&&>::value, void*>::type = 0)
    {
        {
            assert((is_same<TR&, Object&>::value == true));
            assert((is_same<const TR&, Object&>::value == true));
            assert((is_same<volatile TR&, Object&>::value == true));
            assert((is_same<const volatile TR&, Object&>::value == true));
        }

        {
            assert((is_same<TR&&, Object&&>::value == true));
            assert((is_same<const TR&&, Object&&>::value == true));
            assert((is_same<volatile TR&&, Object&&>::value == true));
            assert((is_same<const volatile TR&&, Object&&>::value == true));
        }
    }
    void test()
    {
        __lvalue_reference_tmpl_param<Object&>();
        __rvalue_reference_tmpl_param<Object&&>();
    }
}


namespace case3
{
    void test()
    {
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
}

void test()
{
    case1::test();
    case2::test();
    case3::test();
}

PASS_CASE_MAIN_FUNCTION
