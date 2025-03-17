







#include <memory>
#include <cassert>

int main()
{
        std::shared_ptr<int> p(new int(4));
        std::shared_ptr<int> r(new int(3));
        r = std::atomic_exchange_explicit(&p, r, std::memory_order_seq_cst);
        assert(*p == 3);
        assert(*r == 4);
}
