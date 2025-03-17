
#include <system_error>
#include <cassert>

void test()
{
    const std::error_category& e_cat = std::generic_category();
    std::error_condition e_cond = e_cat.default_error_condition(static_cast<int>(std::errc::bad_message));
    assert(e_cond.category() == e_cat);
    assert(e_cond.value() == static_cast<int>(std::errc::bad_message));
}

int main()
{
    test();
    
    return 0;
}
