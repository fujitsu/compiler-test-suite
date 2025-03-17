






#include <chrono>
#include <ctime>

int main()
{
    typedef std::chrono::system_clock C;
    std::time_t t1 = C::to_time_t(C::now());
    static_assert(noexcept(C::to_time_t(C::now())),"");
    ((void)t1);
}
