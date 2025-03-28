





#include <future>
#include <cassert>

void func(std::promise<int> p)
{
    const int i = 5;
    p.set_exception_at_thread_exit(std::make_exception_ptr(3));
}

int main()
{
    {
        typedef int T;
        std::promise<T> p;
        std::future<T> f = p.get_future();
        std::thread(func, std::move(p)).detach();
        try
        {
            f.get();
            assert(false);
        }
        catch (int i)
        {
            assert(i == 3);
        }
    }
}
