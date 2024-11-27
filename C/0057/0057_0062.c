
#include <assert.h>

struct  {
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
    assert(sizeof(x) == 8U);
}

int main() {
    test();
}
