#include <cassert>
#include <pthread.h>

thread_local int x = 0;
void* fun(void * arg) {
    x = *(int *)arg;
    pthread_yield();
    assert (x == *(int *)arg);
    return &x;

}

void test() {
    int arg = 1;
    void *ret1, *ret2;
    pthread_t th1, th2;

    pthread_create(&th1, NULL, fun, &arg);
    arg = 2;
    pthread_create(&th2, NULL, fun, &arg);
    pthread_join(th1, &ret1);
    pthread_join(th2, &ret2);

    assert(x == 0);
}

int main(int argc, char *argv[]) {
    test();
    return 0;
}
