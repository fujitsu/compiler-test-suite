





#include <random>
#include <cassert>

void
test1()
{
    for (int s = 0; s < 20; ++s)
    {
        typedef std::independent_bits_engine<std::ranlux24, 32, unsigned> E;
        E e1(s);
        E e2;
        e2.seed(s);
        assert(e1 == e2);
    }
}

void
test2()
{
    for (int s = 0; s < 20; ++s)
    {
        typedef std::independent_bits_engine<std::ranlux48, 64, unsigned long long> E;
        E e1(s);
        E e2;
        e2.seed(s);
        assert(e1 == e2);
    }
}

int main()
{
    test1();
    test2();
}
