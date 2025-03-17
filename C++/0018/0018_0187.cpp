





#include <future>
#include <cassert>

int main()
{
    {
        std::shared_future<int> f;
        assert(!f.valid());
        static_assert(noexcept(std::shared_future<int>()),"");
        static_assert(noexcept(f.valid()),"");
    }
    {
        std::shared_future<int&> f;
        assert(!f.valid());
    }
    {
        std::shared_future<void> f;
        assert(!f.valid());
    }
}
