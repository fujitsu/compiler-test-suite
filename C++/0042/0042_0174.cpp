#include <cassert>
#include <pthread.h>

static int count = 0;
struct A {
    ~A();
    int m_a;
};

thread_local A a;
static A b;

A::~A(){
    if (this == &a) count = 1; else count = 2;
}

void *fun(void *) {
    a.m_a = 0;
    b.m_a = 0;
    return 0;
}

void test() {
    pthread_t th1;
    pthread_create(&th1, NULL, fun, NULL);
    pthread_join(th1, NULL);
    assert(count == 1);
}

int main() {
    test();
    return 0;
}
