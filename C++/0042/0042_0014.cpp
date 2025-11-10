#include "./004.h"
#include "./005.h"





namespace case1
{
    template <class T, class U>
    typename enable_if<bool(sizeof(declval<T>() + declval<U>())), __one>::type __test(int);

    template <class, class>
    __two __test(...);

    class A;
    class B {};
    extern B operator+ (B, B);

    void test()
    {
        assert_true(sizeof(__test<int, double>(0)) == sizeof(__one));
        assert_true(sizeof(__test<A, A>(0)) == sizeof(__two));
        assert_true(sizeof(__test<B, B>(0)) == sizeof(__one));
    }
}


namespace case2
{
    template <class T, class U>
    auto __test(int) -> typename enable_if<bool(sizeof(declval<T>() + declval<U>())), __one>::type;

    template <class, class>
    __two __test(...);

    class A;
    class B {};
    extern B operator+ (B, B);

    void test()
    {
        assert_true(sizeof(__test<int, double>(0)) == sizeof(__one));
        assert_true(sizeof(__test<A, A>(0)) == sizeof(__two));
        assert_true(sizeof(__test<B, B>(0)) == sizeof(__one));
    }
}


namespace case3
{
    template <class T, class U>
    __one __test(int, typename enable_if<bool(sizeof(declval<T>() + declval<U>())), void*>::type = 0);

    template <class, class>
    __two __test(...);

    class A;
    class B {};
    extern B operator+ (B, B);

    void test()
    {
        assert_true(sizeof(__test<int, double>(0)) == sizeof(__one));
        assert_true(sizeof(__test<A, A>(0)) == sizeof(__two));
        assert_true(sizeof(__test<B, B>(0)) == sizeof(__one));
    }
}

void test()
{
    case1::test();
    case2::test();
    case3::test();
}

PASS_CASE_MAIN_FUNCTION
