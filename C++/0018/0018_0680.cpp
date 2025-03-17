
#include <system_error>
#include <cassert>

void test()
{
    const std::error_category& e_cat = std::generic_category();
    assert(e_cat.equivalent(std::error_code(5, e_cat), 5));
}

int main()
{
    test();
    
    return 0;
}
