





#include <future>
#include <cassert>

int main()
{
    {
        const std::error_condition ec1 =
            std::make_error_condition(std::future_errc::future_already_retrieved);
        static_assert(noexcept(std::make_error_condition(std::future_errc::future_already_retrieved)),"");
        assert(ec1.value() ==
                static_cast<int>(std::future_errc::future_already_retrieved));
        assert(ec1.category() == std::future_category());
    }
}
