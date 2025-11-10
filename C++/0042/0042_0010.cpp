#include "./004.h"
#include "./005.h"


class A { int foo(); };
class B { public: int foo(); };
class C : public B {};
class D : protected B {};
class E : public B, public C {};

namespace case1
{
    template <class T, int = sizeof(declval<T>().foo())>
    __one test(int);

    template <class>
    __two test(...);

    void test()
    {
        assert_true(sizeof(test<A>(0)) == sizeof(__two));
        assert_true(sizeof(test<B>(0)) == sizeof(__one));
        assert_true(sizeof(test<C>(0)) == sizeof(__one));
        assert_true(sizeof(test<D>(0)) == sizeof(__two));
        assert_true(sizeof(test<E>(0)) == sizeof(__two));
    }
}

namespace case2
{
    template <class T, class = decltype(declval<T>().foo())>
    __one test(int);

    template <class>
    __two test(...);

    void test()
    {
        assert_true(sizeof(test<A>(0)) == sizeof(__two));
        assert_true(sizeof(test<B>(0)) == sizeof(__one));
        assert_true(sizeof(test<C>(0)) == sizeof(__one));
        assert_true(sizeof(test<D>(0)) == sizeof(__two));
        assert_true(sizeof(test<E>(0)) == sizeof(__two));
    }
}

namespace case3
{
    template <class T>
    decltype((declval<T>().foo()), declval<__one>()) test(int);

    template <class>
    __two test(...);

    void test()
    {
        assert_true(sizeof(test<A>(0)) == sizeof(__two));
        assert_true(sizeof(test<B>(0)) == sizeof(__one));
        assert_true(sizeof(test<C>(0)) == sizeof(__one));
        assert_true(sizeof(test<D>(0)) == sizeof(__two));
        assert_true(sizeof(test<E>(0)) == sizeof(__two));
    }
}

namespace case4
{
    template <class T>
    auto test(int) -> decltype((declval<T>().foo()), declval<__one>());

    template <class>
    __two test(...);

    void test()
    {
        assert_true(sizeof(test<A>(0)) == sizeof(__two));
        assert_true(sizeof(test<B>(0)) == sizeof(__one));
        assert_true(sizeof(test<C>(0)) == sizeof(__one));
        assert_true(sizeof(test<D>(0)) == sizeof(__two));
        assert_true(sizeof(test<E>(0)) == sizeof(__two));
    }
}

namespace case5
{
    template <class T>
    __one test(int, decltype(declval<T>().foo())* = 0);

    template <class>
    __two test(...);

    void test()
    {
        assert_true(sizeof(test<A>(0)) == sizeof(__two));
        assert_true(sizeof(test<B>(0)) == sizeof(__one));
        assert_true(sizeof(test<C>(0)) == sizeof(__one));
        assert_true(sizeof(test<D>(0)) == sizeof(__two));
        assert_true(sizeof(test<E>(0)) == sizeof(__two));
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
