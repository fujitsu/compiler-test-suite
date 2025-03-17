






#include <chrono>
#include <cassert>

int main()
{
    std::chrono::hours h(3);
    std::chrono::hours& href = --h;
    assert(&href == &h);
    assert(h.count() == 2);
}
