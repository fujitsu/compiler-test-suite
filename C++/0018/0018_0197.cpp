



#include <ios>
#include <cassert>

int main()
{
    std::ios ios(0);
    assert(static_cast<bool>(ios) == !ios.fail());
    ios.setstate(std::ios::failbit);
    assert(static_cast<bool>(ios) == !ios.fail());
}
