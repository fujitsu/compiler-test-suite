
#include <assert.h>

struct Outer {
    union  {
        struct  {
            int a;
            double b;
        };
        int c;
    };
} x;

void test() {
    x.a = 1;
    x.b = 3.14;
    x.c = 3;
    assert(sizeof(struct Outer) == 16U);
}

int main() {
    test();
}
