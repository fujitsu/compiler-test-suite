







#include <random>
#include <sstream>
#include <cassert>

void
test1()
{
    std::mt19937 e1;
    std::mt19937 e2(std::mt19937::default_seed);
    assert(e1 == e2);
    assert(e1() == 3499211612u);
}

void
test2()
{
    std::mt19937_64 e1;
    std::mt19937_64 e2(std::mt19937_64::default_seed);
    assert(e1 == e2);
    assert(e1() == 14514284786278117030ull);
}

int main()
{
    test1();
    test2();
}
