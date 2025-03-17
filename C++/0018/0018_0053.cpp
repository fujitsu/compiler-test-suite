









#include <chrono>
#include <cassert>

int main()
{
    std::chrono::duration<double> d(5);
    assert(d.count() == 5);
    constexpr std::chrono::duration<double> d2(5);
    static_assert(d2.count() == 5, "");
}
