
#include <system_error>
#include <cassert>

void test()
{
    const std::error_code errc = make_error_code(std::errc::permission_denied);
    std::system_error se(errc);    
    assert(se.code() == errc);
}

int main()
{    
    test();
    return 0;
}
