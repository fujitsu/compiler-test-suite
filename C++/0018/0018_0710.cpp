
#include <system_error>
#include <cassert>

void test()
{
    const std::error_condition ec(22, std::system_category());
    assert(ec.value() == 22);
}

int main()
{
    test();
    
    return 0;
}
