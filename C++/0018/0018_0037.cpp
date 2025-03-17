

#include <bitset>
#include <cassert>

template <std::size_t N>
void test_size()
{
    const std::bitset<N> v;
    assert(v.size() == N);
    static_assert(noexcept(v.size()),"");
}

int main()
{
    test_size<0>();
    test_size<1>();
    test_size<31>();
    test_size<32>();
    test_size<33>();
    test_size<63>();
    test_size<64>();
    test_size<65>();
    test_size<1000>();
}
