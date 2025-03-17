
#include <system_error>
#include <cassert>

void test()
{
    std::error_code ec;
    ec.assign(6, std::generic_category());
    assert(ec.value() == 6);
    assert(ec.category() == std::generic_category());
    
    ec.clear();
    assert(ec.value() == 0);
    assert(ec.category() == std::system_category());
}

int main()
{
    test();
    
    return 0;
}
