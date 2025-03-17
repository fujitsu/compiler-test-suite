







#include <memory>
#include <cassert>

int main()
{
        const std::shared_ptr<int> p(new int(3));
        std::shared_ptr<int> q = std::atomic_load_explicit(&p, std::memory_order_relaxed);
        assert(*q == *p);
}
