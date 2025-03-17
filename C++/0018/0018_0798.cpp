




#include <type_traits>

template <class T>
void test_is_unsigned()
{
    static_assert( std::is_unsigned<T>::value, "");
    static_assert( std::is_unsigned<const T>::value, "");
    static_assert( std::is_unsigned<volatile T>::value, "");
    static_assert( std::is_unsigned<const volatile T>::value, "");
}

template <class T>
void test_is_not_unsigned()
{
    static_assert(!std::is_unsigned<T>::value, "");
    static_assert(!std::is_unsigned<const T>::value, "");
    static_assert(!std::is_unsigned<volatile T>::value, "");
    static_assert(!std::is_unsigned<const volatile T>::value, "");
}

class Class
{
public:
    ~Class();
};

class A;

int main()
{
    test_is_not_unsigned<A>();
    test_is_not_unsigned<A[]>();
    test_is_not_unsigned<A[3]>();
    test_is_not_unsigned<void>();
    test_is_not_unsigned<std::nullptr_t>();
    test_is_not_unsigned<void*>();
    test_is_not_unsigned<int&>();
    test_is_not_unsigned<int&&>();
    test_is_not_unsigned<Class>();
    test_is_not_unsigned<int*>();
    test_is_not_unsigned<const int*>();
    test_is_not_unsigned<char[3]>();
    test_is_not_unsigned<char[]>();
    test_is_not_unsigned<int>();
    test_is_not_unsigned<double>();

    test_is_unsigned<bool>();
    test_is_unsigned<unsigned>();
}
