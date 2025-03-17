
#include <system_error>
#include <cassert>

void test()
{
    const std::error_category& e_cat1 = std::generic_category();
    const std::error_category& e_cat2 = std::generic_category();
    const std::error_category& e_cat3 = std::system_category();
    assert(!(e_cat1 < e_cat2) && !(e_cat2 < e_cat1));
    assert((e_cat1 < e_cat3) || (e_cat3 < e_cat1));
}

int main()
{
    test();
    
    return 0;
}
