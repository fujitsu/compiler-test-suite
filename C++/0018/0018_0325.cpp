





#include <mutex>
#include <cassert>
#include <system_error>

bool unlock_called = false;

struct mutex
{
    void lock() {}
    void unlock() {unlock_called = true;}
};

mutex m;

int main()
{
    std::unique_lock<mutex> lk(m);
    lk.unlock();
    assert(unlock_called == true);
    assert(lk.owns_lock() == false);
    try
    {
        lk.unlock();
        assert(false);
    }
    catch (std::system_error& e)
    {
        assert(e.code().value() == EPERM);
    }
    lk.release();
    try
    {
        lk.unlock();
        assert(false);
    }
    catch (std::system_error& e)
    {
        assert(e.code().value() == EPERM);
    }
}
