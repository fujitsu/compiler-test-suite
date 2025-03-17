
#include <system_error>
#include <cassert>

void test()
{
    std::error_code ec(1, std::generic_category());
    assert(static_cast<bool>(ec));
}

int main()
{
    test();
    
    return 0;
}
