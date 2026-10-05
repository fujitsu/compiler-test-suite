#include <atomic>
#include <thread>

std::atomic<int> a_x;

void test() {
    a_x.store(10, std::memory_order_release);
}

int main() {
    test();
    return 0;
}
