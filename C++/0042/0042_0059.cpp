#include <cstdlib>

[[noreturn]] void foo();
[[noreturn]] void foo();
void foo();
[[noreturn]] void foo();
void foo();

void foo() {
    exit(0);
}

void test() {
    foo();
}

int main() {
    test();
}

