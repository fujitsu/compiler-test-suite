
#include <system_error>
#include <cassert>

void test()
{
    std::error_condition ec(std::errc::permission_denied);
    assert(ec.value() == static_cast<int>(std::errc::permission_denied));
    assert(ec.category() == std::generic_category());
}

int main()
{
    test();
    
    return 0;
}
