
#include <assert.h>

union Outer {
    union  {
        union  {
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
    assert(sizeof(union Outer) == 8U);
}

int main() {
    test();
}
