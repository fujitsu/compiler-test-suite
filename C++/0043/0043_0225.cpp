#include <atomic>
#include <cassert>
#include <pthread.h>

using namespace std;

volatile atomic<int> a;
int c = 0;


void* test1(void *) {
    int b = 0;
    assert(1 == atomic_fetch_add_explicit(&a, b, memory_order_seq_cst));
    return NULL;
}



void* test2(void *) {
    int b = 0;
    assert(1 == atomic_fetch_or_explicit(&a, b, memory_order_seq_cst));
    return NULL;
}



void* test3(void *) {
    int b = 1;
    assert(1 == atomic_fetch_and_explicit(&a, b, memory_order_seq_cst));
    return NULL;
}



void* test4(void *) {
    int b = 0;
    assert(1 == atomic_fetch_sub_explicit(&a, b, memory_order_seq_cst));
    return NULL;
}



void* test5(void *) {
    int b = 0;
    assert(1 == atomic_fetch_xor_explicit(&a, b, memory_order_seq_cst));
    return NULL;
}

void* test6(void *) {
    assert(a.load() == 1);
    return NULL;
}

void test() {
    a.store(1);

    pthread_t th1, th2, th3, th4, th5, th6;
    pthread_create(&th1, NULL, test1, NULL);
    pthread_create(&th2, NULL, test2, NULL);
    pthread_create(&th3, NULL, test3, NULL);
    pthread_create(&th4, NULL, test4, NULL);
    pthread_create(&th5, NULL, test5, NULL);
    pthread_create(&th6, NULL, test6, NULL);
    
    pthread_join(th1, NULL);
    pthread_join(th2, NULL);
    pthread_join(th3, NULL);
    pthread_join(th4, NULL);
    pthread_join(th5, NULL);
    pthread_join(th6, NULL);
}

int main() {
    test();
    return 0;
}