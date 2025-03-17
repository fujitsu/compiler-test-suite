







#include <memory>
#include <cassert>

int main()
{
        std::shared_ptr<int> p;
        std::shared_ptr<int> r(new int(3));
        std::atomic_store_explicit(&p, r, std::memory_order_seq_cst);
        assert(*p == *r);
}
