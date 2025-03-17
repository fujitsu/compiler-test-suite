
#include <system_error>
#include <cassert>

void test()
{
    std::error_condition ec;
    ec.assign(3, std::system_category());
    assert(ec.value() == 3);
    assert(ec.category() == std::system_category());
}

int main()
{
    test();
    
    return 0;
}
