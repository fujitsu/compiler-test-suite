






#include <chrono>
#include <cassert>

int main()
{
    {
    const std::chrono::minutes m(3);
    std::chrono::minutes m2 = -m;
    assert(m2.count() == -m.count());
    }
    {
    constexpr std::chrono::minutes m(3);
    constexpr std::chrono::minutes m2 = -m;
    static_assert(m2.count() == -m.count(), "");
    }
}
