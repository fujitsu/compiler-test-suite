





#include <future>
#include <cassert>

int main()
{
    {
        typedef int T;
        std::promise<T> p;
        std::future<T> f0 = p.get_future();
        std::future<T> f;
        f = std::move(f0);
        static_assert(noexcept(f = std::move(f0)),"");
        assert(!f0.valid());
        assert(f.valid());
    }
    {
        typedef int T;
        std::future<T> f0;
        std::future<T> f;
        f = std::move(f0);
        assert(!f0.valid());
        assert(!f.valid());
    }
    {
        typedef int& T;
        std::promise<T> p;
        std::future<T> f0 = p.get_future();
        std::future<T> f;
        f = std::move(f0);
        assert(!f0.valid());
        assert(f.valid());
    }
    {
        typedef int& T;
        std::future<T> f0;
        std::future<T> f;
        f = std::move(f0);
        assert(!f0.valid());
        assert(!f.valid());
    }
    {
        typedef void T;
        std::promise<T> p;
        std::future<T> f0 = p.get_future();
        std::future<T> f;
        f = std::move(f0);
        assert(!f0.valid());
        assert(f.valid());
    }
    {
        typedef void T;
        std::future<T> f0;
        std::future<T> f;
        f = std::move(f0);
        assert(!f0.valid());
        assert(!f.valid());
    }
}
