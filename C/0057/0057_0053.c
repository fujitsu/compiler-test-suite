#include <assert.h>

struct Outer {
        struct  {
            int a;
            double b;
        };
} x;

void test() {
    x.a = 1;
    x.b = 3.14;
    assert(sizeof(struct Outer) == 16U);
}

int main() {
    test();
}
