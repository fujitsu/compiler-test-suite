
#include <utility>
#include <type_traits>
#include <cassert>

void test()
{
    constexpr std::pair<float, short*> p;
    static_assert(p.first == 0.0f, "");
    static_assert(p.second == nullptr, "");
}

int main()
{
    test();
}
