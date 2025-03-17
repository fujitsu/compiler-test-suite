





#include <future>
#include <memory>
#include <cassert>

int i = 0;

void func(std::promise<void> p)
{
    p.set_value_at_thread_exit();
    i = 1;
}

int main()
{
    {
        std::promise<void> p;
        std::future<void> f = p.get_future();
        std::thread(func, std::move(p)).detach();
        f.get();
        assert(i == 1);
    }
}
