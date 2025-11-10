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
    std::atomic<T> at;
    std::atomic<T> volatile atv;
    
    at.store(T(1));
    atv.store(T(2));
    assert(at == T(1));
    assert(atv == T(2));
    
    at.store(T(3), std::memory_order_seq_cst);
    atv.store(T(4), std::memory_order_seq_cst);
    assert(at == T(3));
    assert(atv == T(4));
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
