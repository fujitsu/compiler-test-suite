#include <cassert>

[[noreturn]] void foo() { 
    throw 123;
}

void test() {
    try {
        foo();
    } catch (int e) {
        assert(e == 123);
    }
}

int main() {
    test();
}

