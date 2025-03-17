



#include <future>
#include <cstring>
#include <cassert>

int main()
{
    const std::error_category& ec = std::future_category();
    assert(std::strcmp(ec.name(), "future") == 0);
}
