#ifndef __STDC_NO_ATOMICS__
#include <stdatomic.h>
#endif 
#include <assert.h>

void test_fetch_add() {
#ifndef __STDC_NO_ATOMICS__
    atomic_int i_a = ATOMIC_VAR_INIT(1);
    atomic_int i_b = i_a;
    int b = atomic_fetch_add(&i_a, 2);
    assert(i_b == b);
    assert(i_a == 3);
#endif 
}
void test_fetch_add_explicit() {
#ifndef __STDC_NO_ATOMICS__
    atomic_int i_a = ATOMIC_VAR_INIT(1);
    atomic_int i_b = i_a;
    int b = atomic_fetch_add_explicit(&i_a, 2, memory_order_relaxed);
    assert(i_b == b);
    assert(i_a == 3);
#endif 
}

void test_fetch_sub() {
#ifndef __STDC_NO_ATOMICS__
    atomic_int i_a = ATOMIC_VAR_INIT(1);
    atomic_int i_b = i_a;
    int b = atomic_fetch_sub(&i_a, 2);
    assert(i_b == b);
    assert(i_a == -1);
#endif 
}
void test_fetch_sub_explicit() {
#ifndef __STDC_NO_ATOMICS__
    atomic_int i_a = ATOMIC_VAR_INIT(1);
    atomic_int i_b = i_a;
    int b = atomic_fetch_sub_explicit(&i_a, 2, memory_order_relaxed);
    assert(i_b == b);
    assert(i_a == -1);
#endif 
}

void test_fetch_or() {
#ifndef __STDC_NO_ATOMICS__
    atomic_int i_a = ATOMIC_VAR_INIT(1);
    atomic_int i_b = i_a;
    int b = atomic_fetch_or(&i_a, 2);
    assert(i_b == b);
    assert(i_a == 3);
#endif 
}
void test_fetch_or_explicit() {
#ifndef __STDC_NO_ATOMICS__
    atomic_int i_a = ATOMIC_VAR_INIT(1);
    atomic_int i_b = i_a;
    int b = atomic_fetch_or_explicit(&i_a, 2, memory_order_relaxed);
    assert(i_b == b);
    assert(i_a == 3);
#endif 
}

void test_fetch_xor() {
#ifndef __STDC_NO_ATOMICS__
    atomic_char i_a = ATOMIC_VAR_INIT(1);
    atomic_char i_b = i_a;
    int b = atomic_fetch_xor(&i_a, 2);
    assert(i_b == b);
    assert(i_a == 3);
#endif 
}
void test_fetch_xor_explicit() {
#ifndef __STDC_NO_ATOMICS__
    atomic_char i_a = ATOMIC_VAR_INIT(1);
    atomic_char i_b = i_a;
    int b = atomic_fetch_xor_explicit(&i_a, 2, memory_order_relaxed);
    assert(i_b == b);
    assert(i_a == 3);
#endif 
}

void test_fetch_and() {
#ifndef __STDC_NO_ATOMICS__
    atomic_int i_a = ATOMIC_VAR_INIT(1);
    atomic_int i_b = i_a;
    int b = atomic_fetch_and(&i_a, 2);
    assert(i_b == b);
    assert(i_a == 0);
#endif 
}
void test_fetch_and_explicit() {
#ifndef __STDC_NO_ATOMICS__
    atomic_int i_a = ATOMIC_VAR_INIT(1);
    atomic_int i_b = i_a;
    int b = atomic_fetch_and_explicit(&i_a, 2, memory_order_relaxed);
    assert(i_b == b);
    assert(i_a == 0);
#endif 
}
 
void test() {
    test_fetch_add();
    test_fetch_add_explicit();
    test_fetch_sub();
    test_fetch_sub_explicit();
    test_fetch_or();
    test_fetch_or_explicit();
    test_fetch_xor();
    test_fetch_xor_explicit();
    test_fetch_and();
    test_fetch_and_explicit();
}

int main(int argc, char *argv[]) {
    test();
    return 0;
}
