
#include <utility>

void test()
{
    typedef std::pair<int, short> P1;
    static_assert((std::tuple_size<P1>::value == 2), "");
}

int main()
{
    test();
}
