#include <utility>
#include <cassert>

int main()
{
    constexpr int i1 = std::move(23);
    static_assert(i1 == 23, "");
}
