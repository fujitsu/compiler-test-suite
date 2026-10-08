#ifndef __STDC_NO_ATOMICS__
#include <stdatomic.h>
#include <assert.h>

atomic_bool b_a = 0;
atomic_char c_a = 42;
#endif 

void test() {
#ifndef __STDC_NO_ATOMICS__
    atomic_int  i_a = 42;
    atomic_long l_a = 42;
    atomic_intptr_t ptr_a = 0;
    atomic_size_t st_a = 42;
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
