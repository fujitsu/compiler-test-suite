
#include <system_error>
#include <string>
#include <cassert>

void test()
{
    std::error_code ec(11, std::generic_category());
    assert(ec.message() == std::generic_category().message(11));
}

int main()
{
    test();
    
    return 0;
}
