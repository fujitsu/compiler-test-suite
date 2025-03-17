



#include <future>
#include <cassert>

int main()
{
    {
        std::future<int> f;
        assert(!f.valid());
        static_assert(noexcept(f.valid()),"");
    }
    {
        std::future<void> f;
        assert(!f.valid());
    }
}
