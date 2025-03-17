#include <utility>
#include <cassert>
#include <tuple>

void test()
{
    typedef std::pair<int, short> P;
    constexpr P p(3, 4);
    constexpr std::tuple_element_t<1, std::pair<int, short>> ce = std::get<1>(std::move(p));
    static_assert(ce == 4, "");
}

int main()
{
    test();

    return 0;
}
