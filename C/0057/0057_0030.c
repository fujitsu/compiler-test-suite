#ifndef __STDC_NO_ATOMICS__
#include <stdatomic.h>
#endif 
#include <assert.h>

void test_load() {
#ifndef __STDC_NO_ATOMICS__
    atomic_char x_a = ATOMIC_VAR_INIT('x');
    char x_na = atomic_load(&x_a);
    assert(x_na == 'x');
#endif 
}
void test_load_explicit() {
#ifndef __STDC_NO_ATOMICS__
    atomic_char x_a;
    atomic_init(&x_a, 'x');
    char x_na = atomic_load_explicit(&x_a, memory_order_relaxed);
    assert(x_na = 'x');
#endif 
}
void test() {
    test_load();
    test_load_explicit();
}

int main(int argc, char *argv[]) {
    test();
    return 0;
}
