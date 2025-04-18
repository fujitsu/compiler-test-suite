




#include <thread>
#include <cstdlib>
#include <cassert>

int main()
{
    typedef std::chrono::system_clock Clock;
    typedef Clock::time_point time_point;
    typedef Clock::duration duration;
    std::chrono::milliseconds ms(500);
    time_point t0 = Clock::now();
    std::this_thread::sleep_until(t0 + ms);
    time_point t1 = Clock::now();
    std::chrono::nanoseconds ns = (t1 - t0) - ms;
    std::chrono::nanoseconds err = 5 * ms / 100;
    
    assert(std::abs(ns.count()) < err.count());
}
