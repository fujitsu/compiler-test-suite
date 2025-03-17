









#include <chrono>
#include <cassert>

int main()
{
    {
    std::chrono::duration<int> i(3);
    std::chrono::duration<double, std::milli> d = i;
    assert(d.count() == 3000);
    }
    {
    constexpr std::chrono::duration<int> i(3);
    constexpr std::chrono::duration<double, std::milli> d = i;
    static_assert(d.count() == 3000, "");
    }
}
