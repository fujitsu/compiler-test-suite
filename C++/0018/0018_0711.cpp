
#include <system_error>
#include <cassert>

void test()
{
    std::system_error se(static_cast<int>(std::errc::permission_denied),
                         std::generic_category());
    const std::error_code errc = std::make_error_code(std::errc::permission_denied);

    assert(se.code() == errc);
}

int main()
{    
    test();
    return 0;
}
