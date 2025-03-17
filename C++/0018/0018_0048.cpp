









#include <chrono>
#include <cassert>

int main()
{
    {
    std::chrono::milliseconds ms(1);
    std::chrono::microseconds us = ms;
    assert(us.count() == 1000);
    }
    {
    constexpr std::chrono::milliseconds ms(1);
    constexpr std::chrono::microseconds us = ms;
    static_assert(us.count() == 1000, "");
    }
}
