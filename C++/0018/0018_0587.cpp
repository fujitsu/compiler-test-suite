


#include <random>
#include <cassert>

int main()
{
    std::knuth_b e;
    e.discard(9999);
    assert(e() == 1112339016u);
}
