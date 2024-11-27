
#include <assert.h>

union Outer {
    union Middle {
        union  {
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
    assert(sizeof(union Outer) == 8U);
}

int main() {
    test();
}
