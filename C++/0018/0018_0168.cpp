





#include <future>
#include <cassert>

int main()
{
    const std::error_category& e_cat = std::future_category();
    assert(e_cat.equivalent(std::error_code(5, e_cat), 5));
    assert(!e_cat.equivalent(std::error_code(5, e_cat), 6));
}
