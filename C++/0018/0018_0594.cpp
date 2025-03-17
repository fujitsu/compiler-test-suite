


#include <random>
#include <cassert>

int main()
{
    std::ranlux48 e;
    e.discard(9999);
    assert(e() == 249142670248501ull);
}
