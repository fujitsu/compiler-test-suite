
#include <stdlib.h>
#include <assert.h>
#include <signal.h>

void func1() {
    assert(0 && "never be executed.");
} 

void func2(int x) {
    assert(0 && "never be executed.");
}

void test() {
    atexit(func1);
    signal(SIGABRT, func2);
    quick_exit(0);
    assert(0 && "never be executed.");

}
int main(int argc, char **argv) {
    test();
    return 0;
}