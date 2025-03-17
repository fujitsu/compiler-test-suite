#include <utility>
#include <cassert>

int main()
{
    constexpr int i1 = std::move(23);
    static_assert(i1 == 23, "");
    constexpr int i2 = std::forward<int>(42);
    static_assert(i2 == 42, "");
}
