#include <cassert>

struct alignas(4) alignas(8) alignas(16) X { char __; };
struct alignas(int) alignas(double) Y { char __; };

void test() {
    assert(alignof(X) == 16);
    assert(alignof(Y) == alignof(double));
}

int main() {
    test();
}
