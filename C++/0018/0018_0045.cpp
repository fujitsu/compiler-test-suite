






#include <chrono>
#include <ctime>

int main()
{
    typedef std::chrono::system_clock C;
    C::time_point t1 = C::from_time_t(C::to_time_t(C::now()));
    static_assert(noexcept(C::to_time_t(C::now())),"");
    ((void)t1);
}
