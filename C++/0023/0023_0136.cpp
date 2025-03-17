#include <cassert>
#include <type_traits>
#include <cstddef>

void g1() noexcept {};
void g2() noexcept {};

int h1() noexcept {return 1;};
int h2() noexcept {return 1;};

const void g3() noexcept {};
const void g4() noexcept {};

const int h3() noexcept {return 1;};
const int h4() noexcept {return 1;};

volatile void  g5() noexcept {};
volatile void  g6() noexcept {};

volatile int  h5() noexcept {return 1;};
volatile int  h6() noexcept {return 1;};

template<typename T>
int g12(T*,T*)
{
    assert(true == (std::is_same<T, decltype(g1)>::value));
    return 1;
}

template <typename T>
int g34(T*,T*)
{
    assert(true == (std::is_same<T, decltype(g3)>::value));
    return 1;
}

template <typename T>
int g56(T*,T*)
{
    assert(true == (std::is_same<T, decltype(g5)>::value));
    return 1;
}

template <typename T>
int h12(T*,T*)
{
    assert(true == (std::is_same<T, decltype(h1)>::value));
    return 1;
}

template <typename T>
int h34(T*,T*)
{
    assert(true == (std::is_same<T, decltype(h3)>::value));
    return 1;
}

template <typename T>
int h56(T*,T*)
{
    assert(true == (std::is_same<T, decltype(h5)>::value));
    return 1;
}

template <typename T>
int nullp(T,T)
{
    assert(true == (std::is_same<T, std::nullptr_t>::value));
    return 1;
}
int main()
{
    int x = g12(g1,g2);
    int y = g34(g3,g4);
    int z = g56(g5,g6);
    int x1 = h12(h1,h2);
    int x2 = h34(h3,h4);
    int x3 = h56(h5,h6);
    int x4 = nullp(nullptr,nullptr);
}
