
#include <system_error>
#include <cassert>

void test()
{
    const std::error_condition ec = std::make_error_condition(std::errc::bad_message);
    assert(ec.value() == static_cast<int>(std::errc::bad_message));
    assert(ec.category() == std::generic_category());
}

int main()
{
    test();
    
    return 0;
}
