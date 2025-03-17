






#include <mutex>
#include <cassert>

int main()
{
    std::recursive_timed_mutex m;
    pthread_mutex_t* h = m.native_handle();
    assert(h);
}
