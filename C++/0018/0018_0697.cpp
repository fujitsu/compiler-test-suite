
#include <system_error>
#include <sstream>
#include <cassert>

void test()
{
    std::ostringstream out;
    std::error_code ec(11, std::system_category());
    
    out << std::error_code(ec);
    assert(out.str() == "system:11");
}

int main()
{
    test();
    
    return 0;
}
