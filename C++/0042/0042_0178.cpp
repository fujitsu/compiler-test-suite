#include <cassert>

struct Ag {
    int i;
    float j;
    int *ptr;
};

int f(int x) {
    return x;
}
thread_local int a = 2;
thread_local int b = f(a);
thread_local int c(b);
thread_local Ag  d = {1, 2.0f, 0};


void test2() {
    thread_local int a = 2;
    thread_local int b = f(a);
    thread_local int c(b);
    thread_local Ag  d = {1, 2.0f, 0};
    
    assert(a == 2);
    assert(b == 2);
    assert(c == 2);
    assert(d.i == 1 && d.j == 2.0f && d.ptr == 0);
}


struct A {
    static thread_local int a;
    static thread_local int b;
    static thread_local int c;
    static thread_local Ag  d;

};               
thread_local int A::a = 2;
thread_local int A::b = f(a);
thread_local int A::c(b);
thread_local Ag  A::d = {1, 2.0f, 0};
    
void test() {
    assert(a == 2);
    assert(b == 2);
    assert(c == 2);

    assert(A::a == 2);
    assert(A::b == 2);
    assert(A::c == 2);
    assert(A::d.i == 1 && A::d.j == 2.0 && A::d.ptr == 0);
}

int main() {
    test();
    return 0;
}