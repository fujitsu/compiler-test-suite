



#include <random>
#include <cassert>

int main()
{
    std::minstd_rand e;
    e.discard(9999);
    assert(e() == 399268537u);
}
