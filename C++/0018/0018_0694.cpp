#include <system_error>
#include <cassert>

void test()
{
    std::error_code ec = make_error_code(std::errc::permission_denied);
    assert(ec == std::error_code(static_cast<int>(std::errc::permission_denied), std::generic_category()));
}

int main()
{
    test();
    
    return 0;
}
