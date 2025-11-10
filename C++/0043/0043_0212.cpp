#include <atomic>
#include <cassert>
#include <pthread.h>

volatile std::atomic<int> a;
std::atomic<int> b;


void* test1(void *) {
    assert(1 == std::atomic_exchange(&a, 1));
    return NULL;
}


void* test2(void *) {
    assert(1 == std::atomic_exchange(&b, 1));
    return NULL;
}

void* test3(void *) {
    assert(1 == a.load());
    assert(1 == b.load());
    return NULL;
}

void test() {
    std::atomic_store(&a, 1);
    std::atomic_store(&b, 1);
    assert(a.load() == 1);
    assert(b.load() == 1);
    
    pthread_t th1, th2, th3;
    
    pthread_create(&th1, NULL, test1, NULL);
    pthread_create(&th2, NULL, test2, NULL);
    pthread_create(&th3, NULL, test3, NULL);
    
    pthread_join(th1, NULL);
    pthread_join(th2, NULL);
    pthread_join(th3, NULL);
}

int main() {
    test();
    return 0;
}