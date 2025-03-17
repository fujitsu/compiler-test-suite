






#include <chrono>
#include <cassert>

int main()
{
    std::chrono::microseconds us(11);
    us %= 3;
    assert(us.count() == 2);
}
