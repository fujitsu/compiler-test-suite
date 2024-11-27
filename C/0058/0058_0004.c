

#include <stdlib.h>
#include <assert.h>

int x = 1;
void func() {
    assert(x == 1);
    --x;
}


void test() {
    at_quick_exit(func);
    quick_exit(x - 1);

}
int main(int argc, char **argv) {
    test();
    return 0;
}

