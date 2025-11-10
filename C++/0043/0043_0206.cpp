#include <atomic>
#include "./004.h"
#include "./005.h"

struct X { char _[32]; };

template <class T>
typename enable_if< !is_pointer<T>::value && !is_same<T, bool>::value, void >::type
__test()
{
#ifdef _LIBCPP_VERSION
    std::atomic<T> at;
    std::atomic<T> volatile atv;
    std::atomic_init(&at, T(5));
    std::atomic_init(&atv, T(5));
#else
    std::atomic<T> at(T(5));
    std::atomic<T> volatile atv(T(5));
#endif

    assert(at++ == T(5));
    assert(atv++ == T(5));
    assert(at == T(6));
    assert(atv == T(6));
    
    assert(at-- == T(6));
    assert(atv-- == T(6));
    assert(at == T(5));
    assert(atv == T(5));
    
    assert(++at == T(6));
    assert(++atv == T(6));
    
    assert(--at == T(5));
    assert(--atv == T(5));
}

template <class P>
typename enable_if< is_pointer<P>::value, void >::type
__test()
{
    P p = P(5);

#ifdef _LIBCPP_VERSION
    std::atomic<P> ap;
    std::atomic<P> volatile apv;
    std::atomic_init(&ap, p);
    std::atomic_init(&apv, p);
#else
    std::atomic<P> ap(P(5));
    std::atomic<P> volatile apv(p);
#endif

    assert(ap++ == p);
    assert(apv++ == p);
    assert(ap == (p+1));
    assert(apv == (p+1));
    
    assert(ap-- == (p+1));
    assert(apv-- == (p+1));
    assert(ap == p);
    assert(apv == p);
    
    assert(++ap == (p+1));
    assert(++apv == (p+1));
    assert(--ap == p);
    assert(--apv == p);
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
    
    

    __test<X*>();
}

PASS_CASE_MAIN_FUNCTION
