

#include <bitset>
#include <cassert>

template <std::size_t N>
void test_any()
{
    std::bitset<N> v;
    v.reset();
    assert(v.any() == false);
    static_assert(noexcept(v.any()),"");
    v.set();
    assert(v.any() == (N != 0));
    if (N > 1)
    {
        v[N/2] = false;
        assert(v.any() == true);
        v.reset();
        v[N/2] = true;
        assert(v.any() == true);
    }
}

int main()
{
    test_any<0>();
    test_any<1>();
    test_any<31>();
    test_any<32>();
    test_any<33>();
    test_any<63>();
    test_any<64>();
    test_any<65>();
    test_any<1000>();
}
