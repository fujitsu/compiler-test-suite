
#include <system_error>
#include <cassert>

void test()
{
    std::error_code ec;
    ec.assign(6, std::generic_category());
    assert(ec.category() == std::generic_category());
}

int main()
{
    test();
    
    return 0;
}
