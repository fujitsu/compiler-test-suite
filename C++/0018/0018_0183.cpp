





#include <future>
#include <memory>
#include <cassert>


void func(std::promise<std::unique_ptr<int>> p)
{
    p.set_value_at_thread_exit(std::unique_ptr<int>(new int(5)));
}


int main()
{
    {
        std::promise<std::unique_ptr<int>> p;
        std::future<std::unique_ptr<int>> f = p.get_future();
        std::thread(func, std::move(p)).detach();
        assert(*f.get() == 5);
    }
}
