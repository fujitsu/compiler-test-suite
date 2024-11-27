
#include <assert.h>

int flag = 0;

int foo() {
    flag++;
    return flag;
}

void test() {
    (void)_Generic(foo(), int: 1); 
    assert(flag == 0);
}

int main() {
    test();
}