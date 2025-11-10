#include <atomic>
#include "./004.h"

struct X
{
    constexpr X(int) {}
};

template <class T>
void __test()
{
    #ifndef __clang__
    std::atomic<T> v = ATOMIC_VAR_INIT(5);
    (void)v;
    #endif
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

    
    std::atomic<X*> v2 = ATOMIC_VAR_INIT(0);
}

PASS_CASE_MAIN_FUNCTION
