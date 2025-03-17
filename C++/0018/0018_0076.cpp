






#include <chrono>
#include <cassert>

int main()
{
    typedef std::chrono::system_clock Clock;
    typedef std::chrono::milliseconds Duration;
    std::chrono::time_point<Clock, Duration> t(Duration(3));
    t -= Duration(2);
    assert(t.time_since_epoch() == Duration(1));
}
