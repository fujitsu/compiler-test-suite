


#include <random>
#include <cassert>

void
test1()
{
    std::ranlux24 e1;
    std::ranlux24 e2(std::ranlux24_base::default_seed);
    assert(e1 == e2);
    assert(e1() == 15039276);
}

void
test2()
{
    std::ranlux48 e1;
    std::ranlux48 e2(std::ranlux48_base::default_seed);
    assert(e1 == e2);
    assert(e1() == 23459059301164ull);
}

int main()
{
    test1();
    test2();
}
