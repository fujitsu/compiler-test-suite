#include <atomic>
#include <pthread.h>

std::atomic<int> a_x;

void* test1(void *) {
   std::atomic_store_explicit(&a_x, 10, std::memory_order_consume); 
   return NULL;
}

void test() {
    pthread_t th1;
    pthread_create(&th1, NULL, test1, NULL);
    pthread_join(th1, NULL);
}

int main() {
    test();
    return 0;
}