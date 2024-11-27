
#include <assert.h>

struct Outer {
    union Middle {
        struct  {
            int a;
            double b;
        };
        int c;
    } m;
} x;

void test() {
    x.m.a = 1;
    x.m.b = 3.14;
    x.m.c = 3;
    assert(sizeof(struct Outer) == 16U);
}

int main() {
    test();
}
