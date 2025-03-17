#include <thread>
#include <mutex>
#include <cassert>

typedef std::chrono::steady_clock Clock;
typedef std::chrono::milliseconds ms;
ms WaitTime = ms(250);
std::timed_mutex m;

int main()
{
    static_assert(!noexcept(m.try_lock_until(Clock::now() + WaitTime)), "");
}
