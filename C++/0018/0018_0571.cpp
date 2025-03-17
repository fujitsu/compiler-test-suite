

#include <random>
#include <cassert>

template <class T, T a, T c, T m>
void
test1()
{
    typedef std::linear_congruential_engine<T, a, c, m> E;
    E e1;
    E e2 = e1;
    assert(e1 == e2);
    e1();
    e2();
    assert(e1 == e2);
}

template <class T>
void
test()
{
    
    
    test1<T, 1, 1, 2>();
    const T M(~0);
    
    
    
    test1<T, M-2, 0, M>();
    test1<T, M-2, M-2, M>();
    test1<T, M-2, M-1, M>();
    test1<T, M-1, 0, M>();
    test1<T, M-1, M-2, M>();
    test1<T, M-1, M-1, M>();
}

int main()
{
    test<unsigned short>();
    test<unsigned int>();
    test<unsigned long>();
    test<unsigned long long>();
}
