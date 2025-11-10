#include <atomic>
#include <pthread.h>

std::atomic<int> a_x;

void* test1(void *) {
    a_x.store(1,std::memory_order_seq_cst);
    std::atomic_store_explicit(&a_x, 1, std::memory_order_consume);
    return NULL;
}
void test() {
    pthread_t th;
    pthread_create(&th, NULL, test1, NULL);
    pthread_join(th, NULL);
}

int main() {
    test();
    return 0;
}