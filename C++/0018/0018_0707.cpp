
#include <system_error>
#include <cassert>
#include <string>

void test()
{
    const std::error_condition ec(22, std::generic_category());
    assert(ec.message() == std::generic_category().message(22));   
}

int main()
{
    test();
    
    return 0;
}
