#include <cassert>

int fun(int& a) {
    assert(a == 0);
    return 1;
}
thread_local int a = fun(a);  


void test2() {
    thread_local int b = fun(b);
    assert(a == 1);
    assert(b == 1);
}

void test() {
    test2();
}

int main() {
    test();
    return 0;
}
