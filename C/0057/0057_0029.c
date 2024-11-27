
#ifndef __STDC_NO_ATOMICS__
#include <stdatomic.h>
#endif 
#include <assert.h>
void test_store() {
#ifndef __STDC_NO_ATOMICS__
    atomic_int x = ATOMIC_VAR_INIT(2);
    atomic_int *pa = &x;
    atomic_store(pa, 42);
    assert(*pa == 42);
#endif 
}

void test_store_explicit() {
#ifndef __STDC_NO_ATOMICS__
    atomic_int x;
    atomic_init(&x, 2);
    atomic_store_explicit(&x, 42, memory_order_relaxed);
    assert(x == 42);
#endif 
}

void test() {
    test_store();
    test_store_explicit();
}

int main(int argc, char *argv[]) {
    test();
    return 0;
}
