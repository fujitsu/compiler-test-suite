#include <atomic>
#include <cassert>
#include <pthread.h>

using namespace std;

volatile atomic_flag vf = ATOMIC_FLAG_INIT;
atomic_flag f = ATOMIC_FLAG_INIT;
atomic_flag flag = ATOMIC_FLAG_INIT;

void* test1(void *) {
    atomic_flag_test_and_set_explicit(&vf, memory_order_seq_cst);
    return NULL;
}

void* test2(void *) {
    atomic_flag_test_and_set_explicit(&f, memory_order_seq_cst);
    return NULL;
}

void* test3(void *) {
    vf.clear();
    f.clear();
    return NULL;
}

void test() {
    atomic_flag_test_and_set(&flag);
    
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