
#include <system_error>
#include <cassert>

void test()
{
    std::error_condition ec;
    ec = std::errc::not_enough_memory;
    assert(ec.value() == static_cast<int>(std::errc::not_enough_memory));
    assert(ec.category() == std::generic_category());
}

int main()
{
    test();
    
    return 0;
}
