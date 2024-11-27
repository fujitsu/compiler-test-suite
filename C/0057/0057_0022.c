 
#ifndef __STDC_NO_ATOMICS__
#include <stdatomic.h>
#include <assert.h>
#endif 

void test() {
#ifndef __STDC_NO_ATOMICS__
    atomic_bool b_a;
    atomic_init(&b_a, 0);

    atomic_char c_a;
    atomic_init(&c_a, 42);

    atomic_int  i_a;
    atomic_init(&i_a, 42);

    atomic_long l_a;
    atomic_init(&l_a, 42);

    atomic_intptr_t ptr_a;
    atomic_init(&ptr_a, 0);

    atomic_size_t st_a;
    atomic_init(&st_a, 42);

    assert(b_a == 0);
    assert(c_a == 42);
    assert(i_a == 42);
    assert(l_a == 42);
    assert(ptr_a == 0);
    assert(st_a == 42);
#endif 
}

int main(int argc, char *argv[]) {
    test();
    return 0;
}
