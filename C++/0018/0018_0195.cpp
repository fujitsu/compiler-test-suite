










#include <ios>
#include <string>
#include <cassert>

int main()
{
    {
        static_assert( std::io_errc::stream == (std::io_errc)1 , "");
    }
    {
        static_assert(std::is_error_code_enum<std::io_errc>::value, "");
    }
    {
        std::error_code ec = make_error_code(std::io_errc::stream);
        assert(ec.value() == static_cast<int>(std::io_errc::stream));
        assert(ec.category() == std::iostream_category());
    }
    {
        const std::error_condition ec1 = std::make_error_condition(std::io_errc::stream);
        assert(ec1.value() == static_cast<int>(std::io_errc::stream));
        assert(ec1.category() == std::iostream_category());
    }
    {
        const std::error_category& e_cat1 = std::iostream_category();
        std::string m1 = e_cat1.name();
        assert(m1 == "iostream");
    }
    return 0;;
}

