
#include <system_error>
#include <cstring>
#include <cassert>

void test()
{
    const std::error_category& e_cat = std::generic_category();
    assert(strcmp(e_cat.name(), "generic")==0);
}

int main()
{
    test();
    
    return 0;
}
