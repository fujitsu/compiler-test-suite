






#include <mutex>
#include <cassert>

int main()
{
    std::mutex m;
    pthread_mutex_t* h = m.native_handle();
    assert(h);
}
