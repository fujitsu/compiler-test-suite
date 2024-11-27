
#include <assert.h>

union  {
    struct Middle {
        struct {
            int a;
            double b;
        };
    } m;
} x;

void test() {
    x.m.a = 1;
    x.m.b = 3.14;
    assert(sizeof(x) == 16U);
}

int main() {
    test();
}
