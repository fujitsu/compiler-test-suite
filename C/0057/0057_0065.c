
#include <assert.h>

union  {
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
    assert(sizeof(x) == 16U);
}

int main() {
    test();
}
