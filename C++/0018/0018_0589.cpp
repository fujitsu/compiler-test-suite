



#include <random>
#include <cassert>

int main()
{
    std::minstd_rand0 e;
    e.discard(9999);
    assert(e() == 1043618065u);
}
