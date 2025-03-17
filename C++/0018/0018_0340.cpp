










#include <random>
#include <type_traits>
#include <cassert>

void
test1()
{
    typedef std::independent_bits_engine<std::ranlux24, 32, unsigned> E;
    assert((E::min() == 0));
    assert((E::max() == 0xFFFFFFFF));
}

void
test2()
{
    typedef std::independent_bits_engine<std::ranlux48, 64, unsigned long long> E;
    assert((E::min() == 0));
    assert((E::max() == 0xFFFFFFFFFFFFFFFFull));
}

int main()
{
    test1();
    test2();
}
