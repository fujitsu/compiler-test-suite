
#include <system_error>
#include <cassert>

enum testErrNo
{
    ErrNo = 11
};

namespace std
{
    template <> struct is_error_code_enum<testErrNo> : public std::true_type {};
}

std::error_code
make_error_code(testErrNo x)
{
    return std::error_code(static_cast<int>(x), std::generic_category());
}

void test()
{
    std::error_code ec;
    assert(ec.value() == 0);
    assert(ec.category() == std::system_category());
    
    ec = ErrNo;
    assert(ec.value() == 11);
    assert(ec.category() == std::generic_category());
}

int main()
{
    test();
    
    return 0;
}
