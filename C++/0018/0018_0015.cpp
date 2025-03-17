



#include <atomic>

int main()
{
    std::atomic_thread_fence(std::memory_order_seq_cst);
    static_assert(noexcept(std::atomic_thread_fence(std::memory_order_seq_cst)),"");
}
