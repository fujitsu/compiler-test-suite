





#include <future>
#include <cassert>

int main()
{
    {
        std::future<int> f;
        static_assert(noexcept(std::future<int>()),"");
        assert(!f.valid());
    }
    {
        std::future<int&> f;
        assert(!f.valid());
    }
    {
        std::future<void> f;
        assert(!f.valid());
    }
}
