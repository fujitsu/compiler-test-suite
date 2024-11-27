
#include <assert.h>

struct  {
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
    assert(sizeof(x) == 8U);
}

int main() {
    test();
}
