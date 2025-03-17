

#include <bitset>
#include <cstdlib>

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
void test_test()
{
    const std::bitset<N> v1 = make_bitset<N>();
    try{
      bool b = v1.test(50);
    } catch(...){
      printf("ok\n");
    }
    if (50 >= v1.size()){}
}

int main()
{
    test_test<0>();
}
