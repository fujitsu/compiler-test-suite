#ifndef __STDC_NO_ATOMICS__
#include <stdatomic.h>
#endif 
#include <assert.h>

void test_cmp_exchange_strong() {
#ifndef __STDC_NO_ATOMICS__
    atomic_int i_a = ATOMIC_VAR_INIT(1);
    int i_na = 2;
    atomic_compare_exchange_strong(&i_a, &i_na, 3);
    assert(i_a == 1);
#endif 
}

void test_cmp_exchange_strong_explicit() {
#ifndef __STDC_NO_ATOMICS__
    atomic_int i_a = ATOMIC_VAR_INIT(1);
    int i_na = 2;
    atomic_compare_exchange_strong_explicit(&i_a, &i_na, 3, 
                                            memory_order_release, 
                                            memory_order_relaxed);
    assert(i_a == 1);
#endif 

}

void test_cmp_exchange_weak() {
#ifndef __STDC_NO_ATOMICS__
    atomic_int i_a;
    atomic_init(&i_a, 1);
    int i_na = 2;
    atomic_compare_exchange_weak(&i_a, &i_na, 3);
    assert(i_a = 1);
#endif 
}

void test_cmp_exchange_weak_explicit() {
#ifndef __STDC_NO_ATOMICS__
    atomic_int i_a;
    atomic_init(&i_a, 1);
    int i_na = 2;
    atomic_compare_exchange_weak_explicit(&i_a, &i_na, 3, 
                                           memory_order_release, 
                                           memory_order_relaxed);
    assert(i_a = 1);
#endif 
}

void test() {
    test_cmp_exchange_strong();
    test_cmp_exchange_strong_explicit();
    test_cmp_exchange_weak();
    test_cmp_exchange_weak_explicit();
}    

int main(int argc, char *argv[]) {
    test();
    return 0;
}

