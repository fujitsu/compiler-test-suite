





#include <future>
#include <cassert>

int main()
{
    {
        std::error_code ec = make_error_code(std::future_errc::broken_promise);
        static_assert(noexcept(make_error_code(std::future_errc::broken_promise)),"");
        assert(ec.value() == static_cast<int>(std::future_errc::broken_promise));
        assert(ec.category() == std::future_category());
    }
}
