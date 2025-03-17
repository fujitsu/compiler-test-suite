#include <system_error>
#include <type_traits>
#include <string>
#include <cassert>

class My_error : public std::error_category
{
public:
    constexpr My_error() = default;
    virtual const char *name() const noexcept { return nullptr; }
    virtual std::string message(int ev) const { return std::string(); }
};

void test()
{
    static_assert(std::is_nothrow_default_constructible<My_error>::value, "");
}

int main()
{
    test();

    return 0;
}
