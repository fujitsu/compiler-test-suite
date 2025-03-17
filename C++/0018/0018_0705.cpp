#include <system_error>
#include <cassert>

void test()
{
    const std::error_category& ecat = std::generic_category();
    std::error_condition ec(5, ecat);
    assert(ec.value() == 5);
    assert(ec.category() == ecat);
}

int main()
{
    test();
    
    return 0;
}
