



#include <chrono>
#include <limits>
#include <cassert>

int main()
{
    assert(std::chrono::duration_values<int>::max() ==
           std::numeric_limits<int>::max());
    assert(std::chrono::duration_values<double>::max() ==
           std::numeric_limits<double>::max());
    static_assert(std::chrono::duration_values<int>::max() ==
           std::numeric_limits<int>::max(), "");
    static_assert(std::chrono::duration_values<double>::max() ==
           std::numeric_limits<double>::max(), "");
}
