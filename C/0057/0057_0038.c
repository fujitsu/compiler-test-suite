
#include <assert.h>

int flag = 0;
float foof(float x) {
    flag |= 1;
    return x;
}
double foo(double x) {
    flag |= 2;
    return x;
}
long double fool(long double x) {
    flag |= 4;
    return x;
}

#define foo(x) _Generic((x), \
                        long double: fool, \
                        default: foo, \
                        float: foof \
                        )(x)

void test() {
    foo(3.14F);
    assert(flag & 1);
    foo(3.14);
    assert(flag & 2);
    foo(3.14L);
    assert(flag & 4);
}

int main() {
    test();
}
