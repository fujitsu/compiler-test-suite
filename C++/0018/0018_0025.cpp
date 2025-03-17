

#include <bitset>
#include <cassert>

template <std::size_t N>
void test_all()
{
    std::bitset<N> v;
    v.reset();
    assert(v.all() == (N == 0));
    v.set();
    assert(v.all() == true);
    static_assert(noexcept(v.all()),"");
    if (N > 1)
    {
        v[N/2] = false;
        assert(v.all() == false);
    }
}

int main()
{
    test_all<0>();
    test_all<1>();
    test_all<31>();
    test_all<32>();
    test_all<33>();
    test_all<63>();
    test_all<64>();
    test_all<65>();
    test_all<1000>();
}
