




#include <type_traits>

template <class T>
void test_is_trivial()
{
    static_assert( std::is_trivial<T>::value, "");
    static_assert( std::is_trivial<const T>::value, "");
    static_assert( std::is_trivial<volatile T>::value, "");
    static_assert( std::is_trivial<const volatile T>::value, "");
}

template <class T>
void test_is_not_trivial()
{
    static_assert(!std::is_trivial<T>::value, "");
    static_assert(!std::is_trivial<const T>::value, "");
    static_assert(!std::is_trivial<volatile T>::value, "");
    static_assert(!std::is_trivial<const volatile T>::value, "");
}

struct A {};

class B
{
public:
    B();
};

class C;
int main()
{
    test_is_trivial<int> ();
    test_is_trivial<A> ();
    test_is_trivial<int[]> ();

    test_is_not_trivial<int&> ();
    test_is_not_trivial<void> ();
    test_is_not_trivial<volatile int&> ();
    test_is_not_trivial<B> ();
}
