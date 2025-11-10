#include <cassert>

struct alignas(8) X {  
    char x;
};

struct alignas(0) Y { 
    double y;
};

void test() {
    assert(alignof(X) == 8);
    assert(alignof(Y) == alignof(double));
}

int main() {
    test();
}
