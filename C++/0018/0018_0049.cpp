









#include <chrono>
#include <cassert>

int main()
{
    {
    std::chrono::duration<double, std::micro> us(1);
    std::chrono::duration<double, std::milli> ms = us;
    assert(ms.count() == 1./1000);
    }
    {
    constexpr std::chrono::duration<double, std::micro> us(1);
    constexpr std::chrono::duration<double, std::milli> ms = us;
    static_assert(ms.count() == 1./1000, "");
    }
}
