






#include <chrono>
#include <cassert>

int main()
{
    std::chrono::hours h(3);
    std::chrono::hours h2 = h--;
    assert(h.count() == 2);
    assert(h2.count() == 3);
}
