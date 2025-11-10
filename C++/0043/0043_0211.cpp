#include <atomic>
#include <cassert>

void test() {
    std::atomic<int> a_x;
    a_x.store(1, std::memory_order_seq_cst);    
    int x = std::kill_dependency(a_x.load(std::memory_order_seq_cst));
    a_x.store(2, std::memory_order_seq_cst);
    x = 3;
    assert(x == 3);
}

int main(int argc, char *argv[]) {
    test();
    return 0;
}
