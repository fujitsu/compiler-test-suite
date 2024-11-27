
#include <stdlib.h>
#include <assert.h>

void func1() {
} 

void test() {
    at_quick_exit(func1);
    quick_exit(0);
    assert(0 && "never be executed.");
}
int main(int argc, char **argv) {
    test();
    
    return 0;
}
