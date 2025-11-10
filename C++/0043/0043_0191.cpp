#include <atomic>
#include "./004.h"

struct X
{
    int data;
    X() = default;
    explicit X(int d) : data(d) {}
    friend bool operator ==(const X& x1, const X& x2) 
        { return x1.data == x2.data; }
};

template <class T>
void __test()
{
#ifdef _LIBCPP_VERSION
    std::atomic<T> at;
    std::atomic<T> volatile atv;
    std::atomic_init(&at, T(1));
    std::atomic_init(&atv, T(2));
#else
    std::atomic<T> at(T(1));
    std::atomic<T> volatile atv(T(2));
#endif
    
    T t1(std::atomic_load(&at));
    T t2(std::atomic_load(&atv));
    assert(t1 == T(1));
    assert(t2 == T(2));
}

void test()
{
    __test<char>();
    __test<signed char>();
    __test<unsigned char>();
    __test<short>();
    __test<unsigned short>();
    __test<int>();
    __test<unsigned int>();
    __test<long>();
    __test<unsigned long>();
    __test<long long>();
    __test<unsigned long long>();
    __test<char16_t>();
    __test<char32_t>();
    __test<wchar_t>();
    
    __test<bool>();
    
    __test<X>();
    __test<X*>();
}

PASS_CASE_MAIN_FUNCTION
