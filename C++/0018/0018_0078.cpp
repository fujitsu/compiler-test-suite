





#include <chrono>
#include <cassert>

int main()
{
    typedef std::chrono::system_clock Clock;
    typedef std::chrono::milliseconds Duration;
    typedef std::chrono::time_point<Clock, Duration> TP;
    assert(TP::min() == TP(Duration::min()));
}
