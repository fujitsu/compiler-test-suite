#include <utility>

int main()
{
    constexpr int i1 = 23;
    constexpr int i2 = std::move_if_noexcept(i1);
    static_assert(i2 == 23, "");
}
