

#include <bitset>

template <std::size_t N>
std::bitset<N>
make_bitset()
{
    std::bitset<N> v;
    return v;
}

template <std::size_t N>
void test_flip_one()
{
    std::bitset<N> v = make_bitset<N>();

    try{
      v.flip(50);
    } catch(...){
      printf("ok\n");
    }
}

int main()
{
    test_flip_one<12>();
}
