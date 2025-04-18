

#include <bitset>
#include <cstdlib>
#include <cassert>

template <std::size_t N>
std::bitset<N>
make_bitset()
{
    std::bitset<N> v;
    for (std::size_t i = 0; i < N; ++i)
        v[i] = static_cast<bool>(std::rand() & 1);
    return v;
}

template <std::size_t N>
void test_op_or()
{
    std::bitset<N> v1 = make_bitset<N>();
    std::bitset<N> v2 = make_bitset<N>();
    std::bitset<N> v3 = v1;
    assert((v1 | v2) == (v3 |= v2));;
    static_assert(noexcept(v1 | v2),"");
}

int main()
{
    test_op_or<0>();
    test_op_or<1>();
    test_op_or<31>();
    test_op_or<32>();
    test_op_or<33>();
    test_op_or<63>();
    test_op_or<64>();
    test_op_or<65>();
    test_op_or<1000>();
}
