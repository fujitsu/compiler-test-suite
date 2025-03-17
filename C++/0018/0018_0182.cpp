





#include <future>
#include <memory>
#include <cassert>

int i = 0;

void func(std::promise<int&> p)
{
    p.set_value_at_thread_exit(i);
    i = 4;
}

int main()
{
    {
        std::promise<int&> p;
        std::future<int&> f = p.get_future();
        std::thread(func, std::move(p)).detach();
        assert(f.get() == 4);
    }
}
