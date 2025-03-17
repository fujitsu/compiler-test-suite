#include <utility>
#include <cassert>
#include <tuple>

void test()
{
    typedef std::pair<int, short> P;
    constexpr const P p(3, 4);
    constexpr const std::tuple_element_t<1, std::pair<int, short>> ce = std::get<1>(p);
    static_assert(ce == 4, "");
}

int main()
{
    test();

    return 0;
}
