
#include <assert.h>

union {
    
        struct  {
            int a;
            double b;
        };
} x;

void test() {
    x.a = 1;
    x.b = 3.14;
    assert(sizeof(x) == 16U);
}

int main() {
    test();
}
