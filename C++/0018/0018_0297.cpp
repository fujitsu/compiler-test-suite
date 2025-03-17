









#include <memory>
#include <cassert>

int main()
{
        std::shared_ptr<int> p(new int(4));
        std::shared_ptr<int> v(new int(3));
        std::shared_ptr<int> w(new int(2));
        bool b = std::atomic_compare_exchange_strong_explicit(&p, &v, w,
                                                              std::memory_order_seq_cst,
                                                              std::memory_order_seq_cst);
}
