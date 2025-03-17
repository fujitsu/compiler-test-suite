
#include <system_error>
#include <cassert>
#include <string>

void test()
{
    const std::error_category& e_cat1 = std::generic_category();
    const std::error_category& e_cat2 = std::generic_category();
    assert(e_cat1 == e_cat2);
    std::string m1 = e_cat1.name();
    assert(m1 == "generic");
}

int main()
{
    test();
    
    return 0;
}
