#include "./004.h"
#include "./005.h"

class A;
class B {};
extern B operator+ (B, B);


namespace case1
{
    template <class T, class U, decltype(declval<T>() + declval<U>()) = 0>
    __one __test(int);

    template <class, class>
    __two __test(...);

    void test()
    {
        assert_true(sizeof(__test<int, char>(0)) == sizeof(__one));
        assert_true(sizeof(__test<int, double>(0)) == sizeof(__two));
        assert_true(sizeof(__test<A, A>(0)) == sizeof(__two));
        assert_true(sizeof(__test<B, B>(0)) == sizeof(__two));
    }
}


namespace case2
{
    template <class T, class U, class = decltype(declval<T>() + declval<U>())>
    __one __test(int);

    template <class, class>
    __two __test(...);

    void test()
    {
        assert_true(sizeof(__test<int, char>(0)) == sizeof(__one));
        assert_true(sizeof(__test<int, double>(0)) == sizeof(__one));
        assert_true(sizeof(__test<A, A>(0)) == sizeof(__two));
        assert_true(sizeof(__test<B, B>(0)) == sizeof(__one));
    }
}


namespace case3
{
    template <class T, class U>
    decltype((declval<T>() + declval<U>(), declval<__one>())) __test(int);

    template <class, class>
    __two __test(...);

    void test()
    {
        assert_true(sizeof(__test<int, char>(0)) == sizeof(__one));
        assert_true(sizeof(__test<int, double>(0)) == sizeof(__one));
        assert_true(sizeof(__test<A, A>(0)) == sizeof(__two));
        assert_true(sizeof(__test<B, B>(0)) == sizeof(__one));
    }
}


namespace case4
{
    template <class T, class U>
    auto __test(int) -> decltype((declval<T>() + declval<U>(), declval<__one>()));

    template <class, class>
    __two __test(...);

    void test()
    {
        assert_true(sizeof(__test<int, char>(0)) == sizeof(__one));
        assert_true(sizeof(__test<int, double>(0)) == sizeof(__one));
        assert_true(sizeof(__test<A, A>(0)) == sizeof(__two));
        assert_true(sizeof(__test<B, B>(0)) == sizeof(__one));
    }
}


namespace case5
{
    template <class T, class U>
    __one __test(int, decltype(declval<T>() + declval<U>())* = 0);

    template <class, class>
    __two __test(...);

    void test()
    {
        assert_true(sizeof(__test<int, char>(0)) == sizeof(__one));
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
    case4::test();
    case5::test();
}

PASS_CASE_MAIN_FUNCTION
