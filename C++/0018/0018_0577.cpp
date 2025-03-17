







#include <random>
#include <sstream>
#include <cassert>

void
test1()
{
    std::mt19937 e;
    assert(e() == 3499211612u);
    assert(e() == 581869302u);
    assert(e() == 3890346734u);
}

void
test2()
{
    std::mt19937_64 e;
    assert(e() == 14514284786278117030ull);
    assert(e() == 4620546740167642908ull);
    assert(e() == 13109570281517897720ull);
}

int main()
{
    test1();
    test2();
}
