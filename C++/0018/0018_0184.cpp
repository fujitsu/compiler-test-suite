





#include <future>
#include <cassert>

void func(std::promise<int> p)
{
    const int i = 5;
    p.set_value_at_thread_exit(i);
}

int main()
{
    {
        std::promise<int> p;
        std::future<int> f = p.get_future();
        std::thread(func, std::move(p)).detach();
        assert(f.get() == 5);
    }
}
