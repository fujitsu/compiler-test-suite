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
    
    T t1 = T(1);
    T t2 = T(2);
    assert(std::atomic_compare_exchange_weak(&at, &t1, T(3)) == true);
    assert(std::atomic_compare_exchange_weak(&atv, &t2, T(4)) == true);
    assert(t1 == T(1));
    assert(t2 == T(2));
    assert(at == T(3));
    assert(atv == T(4));
    
    assert(std::atomic_compare_exchange_weak(&at, &t1, T(5)) == false);
    assert(std::atomic_compare_exchange_weak(&atv, &t2, T(6)) == false);
    assert(t1 == T(3));
    assert(t2 == T(4));
    assert(at == T(3));
    assert(atv == T(4));
}

template <>
void __test<bool>()
{
#ifdef _LIBCPP_VERSION
    std::atomic<bool> at;
    std::atomic<bool> volatile atv;
    std::atomic_init(&at, true);
    std::atomic_init(&atv, true);
#else
    std::atomic<bool> at(true);
    std::atomic<bool> volatile atv(true);
#endif

    bool b1 = true;
    bool b2 = true;
    assert(std::atomic_compare_exchange_weak(&at, &b1, false) == true);
    assert(std::atomic_compare_exchange_weak(&atv, &b2, false) == true);
    assert( b1 == true);
    assert( b2 == true);
    assert(at == false);
    assert(atv == false);
    
    assert(std::atomic_compare_exchange_weak(&at, &b1, true) == false);
    assert(std::atomic_compare_exchange_weak(&atv, &b2, true) == false);
    assert(b1 == false);
    assert(b2 == false);
    assert(at == false);
    assert(atv == false);
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
