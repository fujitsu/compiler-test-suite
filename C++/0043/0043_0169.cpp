#include <cstdlib>
#include <cassert>

int flag = 3;

void func1() {
    assert(flag-- == 1);
}

void func2() {
    assert(flag-- == 2);
}

void func3() {
    assert(flag-- == 3);
}

void test() {
}
int main() {
    test();
}
