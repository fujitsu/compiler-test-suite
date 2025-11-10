#include <pthread.h>
#include <unistd.h>
#include <cassert>

int counter = 0;
int foo() {
    counter++;
    sleep(1);
    return counter;
}

int bar() {
    static int si = foo();
    return si;
}

void* thmain(void*) {
    int n = bar();
    assert(n == 1);
    return 0;
}

void test() {
    pthread_t pth[10];
    for (int i = 0; i < 10; ++i)
        pthread_create(pth+i, 0, thmain, 0);
    for (int i = 0; i < 10; ++i)
        pthread_join(pth[i], 0);
}

int main() {
    test();
}
