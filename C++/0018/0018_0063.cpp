






#include <chrono>
#include <cassert>

int main()
{
    std::chrono::microseconds us(11);
    std::chrono::microseconds us2(3);
    us %= us2;
    assert(us.count() == 2);
    us %= std::chrono::milliseconds(3);
    assert(us.count() == 2);
}
