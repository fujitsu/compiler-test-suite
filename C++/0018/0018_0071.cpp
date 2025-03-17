




#include <chrono>
#include <cassert>


int main()
{
    assert(std::chrono::duration_values<int>::zero() == 0);
    static_assert(std::chrono::duration_values<int>::zero() == 0, "");
}
