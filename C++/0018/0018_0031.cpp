











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
void test_index_const()
{
    std::bitset<N> v1 = make_bitset<N>();
    if (N > 0)
    {
        assert(v1[N/2] == v1.test(N/2));
        typename std::bitset<N>::reference r = v1[N/2];
        typename std::bitset<N>::reference r2 = v1[N/2];
        r = r2;
        static_assert(noexcept(r = r2),"");
        r = false;
        static_assert(noexcept(r = false),"");
        r = true;
        bool b = ~r;
        static_assert(noexcept(~r),"");
        static_assert(noexcept(b = ~r),"");
        r.flip();
        static_assert(noexcept(r.flip()),"");
    }
}

int main()
{
    test_index_const<1>();
    test_index_const<31>();
    test_index_const<32>();
    test_index_const<33>();
    test_index_const<63>();
    test_index_const<64>();
    test_index_const<65>();
    test_index_const<1000>();
}
