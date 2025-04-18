






#include <chrono>
#include <cassert>

int main()
{
    typedef std::chrono::system_clock C;
    C::time_point t1 = C::now();
    static_assert(noexcept(C::now()),"");
    assert(t1.time_since_epoch().count() != 0);
    assert(C::time_point::min() < t1);
    assert(C::time_point::max() > t1);
}
