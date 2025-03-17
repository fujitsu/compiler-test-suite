
#include <system_error>
#include <cassert>

void test()
{
    const std::error_category& e_cat = std::generic_category();

    std::error_condition e_cond = e_cat.default_error_condition(5);
    assert(e_cat.equivalent(5, e_cond));
}

int main()
{
    test();
    
    return 0;
}
