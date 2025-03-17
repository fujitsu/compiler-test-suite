
#include <system_error>
#include <cassert>

void test()
{
    const std::error_condition ec(22, std::generic_category());
    assert(ec.category() == std::generic_category());
}

int main()
{
    test();
    
    return 0;
}
