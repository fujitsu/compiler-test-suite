
#include <system_error>
#include <cassert>

enum testingErr
{
    ErrNo = 0
};

namespace std
{
    template<> struct is_error_code_enum<testingErr>: public true_type {};
}

std::error_code
make_error_code(testingErr x)
{
    return std::error_code(static_cast<int>(x), std::generic_category());
}

void test()
{
    std::error_code ec(testingErr::ErrNo);
    assert(ec.value() == 0);
    assert(ec.category() == std::generic_category());
}

int main()
{
    test();
    
    return 0;
}
