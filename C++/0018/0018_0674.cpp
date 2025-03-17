
#include <system_error>
#include <cassert>
#include <type_traits>

void test()
{
    typedef std::hash<std::error_code> H;
    static_assert((std::is_same<H::argument_type, std::error_code>::value), "" );
    static_assert((std::is_same<H::result_type, std::size_t>::value), "" );
    H h;
    std::error_code ec1(6, std::system_category());
    std::error_code ec2(6, std::system_category());
    assert(h(ec1) == h(ec2));
}

int main()
{
    test();
    
    return 0;
}
