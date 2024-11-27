
#ifndef __STDC_NO_ATOMICS__
#include <stdatomic.h>
#endif 
#include <assert.h>

void test_exchange() {
#ifndef __STDC_NO_ATOMICS__
    atomic_int i_a = 1;
    int i_na = 2;
    atomic_exchange(&i_a, i_na);
    assert(i_na == i_a);
#endif 
}

void test_exchange_explicit() {
#ifndef __STDC_NO_ATOMICS__
    atomic_uint ui_a  = 1;
    unsigned ui_na = 2;
    atomic_exchange_explicit(&ui_a, ui_na, memory_order_relaxed);
    assert(ui_na == ui_a);
#endif 
}

void test() {
    test_exchange();
    test_exchange_explicit();
}

int main(int argc, char *argv[]) {
    test();
    return 0;
}

