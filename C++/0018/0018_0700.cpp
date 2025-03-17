
#include <system_error>
#include <cassert>

void test()
{
    const std::error_condition ec(22, std::generic_category());
    assert(static_cast<bool>(ec));  
}

int main()
{
    test();
    
    return 0;
}
