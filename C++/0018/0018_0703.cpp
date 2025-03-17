
#include <system_error>
#include <cassert>

void test()
{
    std::error_condition ec;
    assert(ec.value() == 0);
    assert(ec.category() == std::generic_category());
}

int main()
{
    test();
    
    return 0;
}
