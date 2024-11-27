
#ifndef __STDC_NO_ATOMICS__
#include <stdatomic.h>
#include <assert.h>
#endif 

void test() {
#ifndef __STDC_NO_ATOMICS__
    atomic_int x = ATOMIC_VAR_INIT(1);
    int y = kill_dependency(x);
    assert(y == 1);
#endif 
}
 
int main(int argc, char *argv[]) {
    test();
    return 0;
}
