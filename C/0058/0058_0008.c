
#include <stdlib.h>
#include <assert.h>

int x = 3;
void func1() {
    assert(x == 1);
    --x;
}

void func2() {
    assert(x == 2);
    --x;
}

void func3() {
    assert(x == 3);
    --x;
}

void test() {
    at_quick_exit(func1);
    at_quick_exit(func2);
    at_quick_exit(func3);
    quick_exit(x - 3);

}
int main(int argc, char **argv) {
    test();
    return 0;
}
