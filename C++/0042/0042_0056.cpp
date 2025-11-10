#include <cassert>

struct alignas(double) X { char __; };
struct alignas(alignof(double)) Y { char __; };

void test() {
    assert(alignof(X) == alignof(Y));
}

int main() {
    test();
}
