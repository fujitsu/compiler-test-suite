






#include <chrono>
#include <cassert>

int main()
{
    typedef std::chrono::system_clock Clock;
    typedef std::chrono::milliseconds Duration;
    {
    std::chrono::time_point<Clock, Duration> t(Duration(3));
    assert(t.time_since_epoch() == Duration(3));
    }
    {
    std::chrono::time_point<Clock, Duration> t(std::chrono::seconds(3));
    assert(t.time_since_epoch() == Duration(3000));
    }
}
