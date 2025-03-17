





#include <mutex>
#include <cassert>

struct mutex
{
    static int lock_count;
    static int unlock_count;
    void lock() {++lock_count;}
    void unlock() {++unlock_count;}
};

int mutex::lock_count = 0;
int mutex::unlock_count = 0;

mutex m;

int main()
{
    std::unique_lock<mutex> lk(m);
    assert(lk.mutex() == &m);
    assert(lk.owns_lock() == true);
    assert(mutex::lock_count == 1);
    assert(mutex::unlock_count == 0);
    assert(lk.release() == &m);
    static_assert(noexcept(lk.release()),"");
    assert(lk.mutex() == nullptr);
    assert(lk.owns_lock() == false);
    assert(mutex::lock_count == 1);
    assert(mutex::unlock_count == 0);
}
