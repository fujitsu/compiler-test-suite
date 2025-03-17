

#include <bitset>
#include <cassert>

template <std::size_t N>
void test_reset_all()
{
    std::bitset<N> v;
    v.set();
    v.reset();
    static_assert(noexcept(v.reset()),"");
    for (std::size_t i = 0; i < N; ++i)
        assert(!v[i]);
}

int main()
{
    test_reset_all<0>();
    test_reset_all<1>();
    test_reset_all<31>();
    test_reset_all<32>();
    test_reset_all<33>();
    test_reset_all<63>();
    test_reset_all<64>();
    test_reset_all<65>();
    test_reset_all<1000>();
}
