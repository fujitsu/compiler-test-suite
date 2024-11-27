
#include <assert.h>

struct  {
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
    assert(sizeof(x) == 8U);
}

int main() {
    test();
}
