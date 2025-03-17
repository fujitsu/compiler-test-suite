



#include <atomic>

int main()
{
    std::atomic_signal_fence(std::memory_order_seq_cst);
    static_assert(noexcept(std::atomic_signal_fence(std::memory_order_seq_cst)),"");
}
