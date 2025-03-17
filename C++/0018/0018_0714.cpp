
#include <system_error>
#include <cassert>
#include <string>

void test()
{
    const std::string str("abcd");
    const std::error_code errc = make_error_code(std::errc::permission_denied);
    std::system_error se(errc, str.c_str());
    
    assert(se.code() == errc);
    
    std::string msg(se.what());    
    assert(msg.find(str) != std::string::npos);   
}

int main()
{    
    test();
    return 0;
}
