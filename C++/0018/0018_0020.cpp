#include <bitset>
#include <cassert>

template <std::size_t N>
void test_default_ctor()
{
    {
    std::bitset<N> v1;
    static_assert(noexcept( std::bitset<N>()),"");
    assert(v1.size() == N);
    for (std::size_t i = 0; i < N; ++i)
        assert(v1[i] == false);
    }
}

int main()
{
    test_default_ctor<0>();
    test_default_ctor<1>();
    test_default_ctor<31>();
    test_default_ctor<32>();
    test_default_ctor<33>();
    test_default_ctor<63>();
    test_default_ctor<64>();
    test_default_ctor<65>();
    test_default_ctor<1000>();
}
