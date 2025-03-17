
#include <system_error>
#include <string>
#include <cassert>

void test()
{
    const std::error_category& e_cat1 = std::system_category();
    const std::error_category& e_cat2 = std::system_category(); 
    assert(e_cat1 == e_cat2);
  
    std::string m1 = e_cat1.name();
    assert(m1 == "system");
}

int main()
{
    test();
    
    return 0;
}
