


#include <random>
#include <cassert>

void
test1()
{
    std::knuth_b e1;
    std::knuth_b e2(std::minstd_rand0::default_seed);
    assert(e1 == e2);
    assert(e1() == 152607844u);
}

int main()
{
    test1();
}
