#ifndef __STDC_NO_ATOMICS__
#include <stdatomic.h>
#endif 

void test() {
#ifndef __STDC_NO_ATOMICS__
    atomic_char x = 'x';
    atomic_is_lock_free(&x);
#endif 
}

int main(int argc, char *argv[]) {
    test();
    return 0;
}
