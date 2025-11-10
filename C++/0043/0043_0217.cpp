#include <atomic>
#include <cassert>
#include <pthread.h>

using namespace std;
volatile atomic<int> a;
atomic<int> b;
int c = 1;
int d = 1;


void* test1(void *) {
    atomic_compare_exchange_weak_explicit(&a, &c, d, memory_order_seq_cst, memory_order_seq_cst);
    return NULL;
}


void* test2(void *) {
    atomic_compare_exchange_weak_explicit(&b, &c, d, memory_order_seq_cst, memory_order_seq_cst);
    return NULL;
}

void* test3(void *) {
    assert(a.load() == 1);
    assert(b.load() == 1);
    return NULL;
}

void test() {
    a.store(1);
    b.store(1);
    
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