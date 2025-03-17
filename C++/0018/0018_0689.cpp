
#include <system_error>
#include <cassert>

void test()
{
    const std::error_code ec(6, std::generic_category());
    std::error_condition e_cond = ec.default_error_condition();
    assert(e_cond == ec);
}

int main()
{
    test();
    
    return 0;
}
