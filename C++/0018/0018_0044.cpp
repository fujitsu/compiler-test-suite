





#include <chrono>
#include <cassert>

int main()
{
    typedef std::chrono::steady_clock C;
    C::time_point t1 = C::now();
    static_assert(noexcept(C::now()),"");
    C::time_point t2 = C::now();
    assert(t2 >= t1);
}
