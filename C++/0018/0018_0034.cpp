

#include <bitset>
#include <cassert>

template <std::size_t N>
void test_set_all()
{
    std::bitset<N> v;
    v.set();
    static_assert(noexcept(v.set()),"");
    for (std::size_t i = 0; i < N; ++i)
        assert(v[i]);
}

int main()
{
    test_set_all<0>();
    test_set_all<1>();
    test_set_all<31>();
    test_set_all<32>();
    test_set_all<33>();
    test_set_all<63>();
    test_set_all<64>();
    test_set_all<65>();
    test_set_all<1000>();
}
