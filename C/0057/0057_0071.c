
#include <assert.h>

union Outer {
    struct  {
        union  {
            int a;
            double b;
        };
    };
} x;

void test() {
    x.a = 1;
    x.b = 3.14;
    assert(sizeof(union Outer) == 8U);
}

int main() {
    test();
}
