
#include <assert.h>

union Outer {
    struct Middle {
        union  {
            int a;
            double b;
        };
    } m;
} x;

void test() {
    x.m.a = 1;
    x.m.b = 3.14;
    assert(sizeof(union Outer) == 8U);
}

int main() {
    test();
}
