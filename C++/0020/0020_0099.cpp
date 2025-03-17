#include <thread>
#include <mutex>
#include <cassert>

typedef std::chrono::milliseconds ms;
ms WaitTime = ms(250);
std::timed_mutex m;

int main()
{
    static_assert(!noexcept(m.try_lock_for(WaitTime)), "");
}
