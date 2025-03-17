
#include <system_error>
#include <cassert>

void test()
{
    std::error_condition ec(6, std::system_category());
    assert(ec.value() == 6);
    assert(ec.category() == std::system_category());
    ec.clear();
    assert(ec.value() == 0);
    assert(ec.category() == std::generic_category());
}

int main()
{
    test();
    
    return 0;
}
