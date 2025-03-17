#include <type_traits>

enum E
{
};
struct S final
{
};
union U1
{
};
union U2 final
{
};

template <class T>
void test1()
{
    static_assert(std::is_final<T>::value, "");
    static_assert(std::is_final<const T>::value, "");
    static_assert(std::is_final<volatile T>::value, "");
    static_assert(std::is_final<const volatile T>::value, "");
}

template <class T>
void test2()
{
    static_assert(!std::is_final<T>::value, "");
    static_assert(!std::is_final<const T>::value, "");
    static_assert(!std::is_final<volatile T>::value, "");
    static_assert(!std::is_final<const volatile T>::value, "");
}

int main()
{
    test2<E>();
    test2<int>();
    test2<int *>();
    test1<S>();
    test2<S *>();
    test2<U1>();
    test2<U1 *>();
    test1<U2>();
    test2<U2 *>();
    test2<void>();
    test2<int[]>();
}
