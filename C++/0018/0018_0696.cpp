
#include <system_error>
#include <cassert>

void test()
{
    const std::error_code ec1(11, std::generic_category());
    const std::error_code ec2(22, std::generic_category());
    assert(ec1 < ec2);
}

int main()
{
    test();
    
    return 0;
}
