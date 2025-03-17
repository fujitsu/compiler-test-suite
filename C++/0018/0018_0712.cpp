
#include <system_error>
#include <cassert>
#include <string>

void test()
{
    const std::string str("abcd");
    const std::error_code errc = std::make_error_code(std::errc::permission_denied);
    std::system_error se(static_cast<int>(std::errc::permission_denied), std::generic_category(), str.c_str());
    
    assert(se.code() == errc);
    
    std::string msg(se.what());    
    assert(msg.find(str) != std::string::npos);   
}

int main()
{    
    test();
    return 0;
}
