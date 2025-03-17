


#include <random>
#include <cassert>

int main()
{
    std::ranlux48_base e;
    e.discard(9999);
    assert(e() == 61839128582725ull);
}
