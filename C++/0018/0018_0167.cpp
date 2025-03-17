



#include <future>
#include <cassert>

int main()
{
    const std::error_category& e_cat = std::future_category();
    static_assert(noexcept(std::future_category()),"");
    std::error_condition e_cond = e_cat.default_error_condition(static_cast<int>(std::errc::not_a_directory));
    assert(e_cond.category() == e_cat);
    assert(e_cond.value() == static_cast<int>(std::errc::not_a_directory));
}
