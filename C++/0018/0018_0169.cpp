





#include <future>
#include <cassert>

int main()
{
    const std::error_category& e_cat = std::future_category();
    std::error_condition e_cond = e_cat.default_error_condition(5);
    assert(e_cat.equivalent(5, e_cond));
    assert(!e_cat.equivalent(6, e_cond));
}
