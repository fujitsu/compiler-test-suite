






#include <chrono>
#include <cassert>

int main()
{
    std::chrono::nanoseconds ns(15);
    ns /= 5;
    assert(ns.count() == 3);
}
