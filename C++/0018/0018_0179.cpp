





#include <future>
#include <cassert>

int main()
{
    {
        std::promise<int> p;
        std::future<int> f = p.get_future();
        assert(f.valid());
    }
    {
        std::promise<int&> p;
        std::future<int&> f = p.get_future();
        assert(f.valid());
    }
    {
        std::promise<void> p;
        std::future<void> f = p.get_future();
        assert(f.valid());
    }
}
