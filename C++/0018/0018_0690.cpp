#include <system_error>
#include <cassert>

void test()
{
    std::error_code ec;
    assert(ec.value() == 0);
    assert(ec.category() == std::system_category());
}

int main()
{
    test();
    
    return 0;
}
