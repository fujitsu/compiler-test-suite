
#include <system_error>
#include <cassert>

void test()
{
    std::error_code ec;
    assert(ec.value() == 0);
    assert(ec.category() == std::system_category());
    
    const std::error_category& ecat = std::system_category();
    ec.assign(10, ecat);
    
    assert(ec.value() == 10);
    assert(ec.category() == std::system_category());
}

int main()
{
    test();
    
    return 0;
}
