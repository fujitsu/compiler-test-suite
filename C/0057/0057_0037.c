
#include <assert.h>

int flag = 1;
void foo(int a, int b) {
    flag = a*b;
}

void goo() {
    flag++;
}

int lvalue = 1;
#define rvalue 2

void test() {
    _Generic(3.14, double: lvalue, default: rvalue) = 2;
    assert(lvalue == 2);
    
    _Generic(3.14, default: foo)(2, 3);
    assert(flag == 6);
    
    _Generic(3.14, default: goo());
    assert(flag == 7);
}

int main() {
    test();
}
