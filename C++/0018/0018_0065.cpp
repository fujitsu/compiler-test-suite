






#include <chrono>
#include <cassert>

int main()
{
    std::chrono::nanoseconds ns(3);
    ns *= 5;
    assert(ns.count() == 15);
}
