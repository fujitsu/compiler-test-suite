




#include <chrono>
#include <limits>
#include <cassert>


int main()
{
    assert(std::chrono::duration_values<int>::min() ==
           std::numeric_limits<int>::lowest());
    assert(std::chrono::duration_values<double>::min() ==
           std::numeric_limits<double>::lowest());
    static_assert(std::chrono::duration_values<int>::min() ==
           std::numeric_limits<int>::lowest(), "");
    static_assert(std::chrono::duration_values<double>::min() ==
           std::numeric_limits<double>::lowest(), "");
}
