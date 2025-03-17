
#include <system_error>
#include <cassert>

void test()
{
    {
        const std::error_condition ec1(5, std::generic_category());
        const std::error_condition ec2(5, std::generic_category());
        assert(!(ec1 < ec2));
    }
    
    {
        const std::error_condition ec1(5, std::generic_category());
        const std::error_condition ec2(6, std::generic_category());
        assert(ec1 < ec2);
    }
}

int main()
{
    test();
    
    return 0;
}
