
#include <system_error>
#include <cassert>

void test()
{
    {
        std::error_code ec(6, std::system_category());
        assert(ec.value() == 6);
        assert(ec.category() == std::system_category());
    }
    {
        std::error_code ec(8, std::generic_category());
        assert(ec.value() == 8);
        assert(ec.category() == std::generic_category());
    }
}

int main()
{
    test();
    
    return 0;
}
