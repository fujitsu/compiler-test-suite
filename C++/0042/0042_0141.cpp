#include <cassert>

int flag = 0;

struct T {};

struct X {
    X(double, int) throw() { flag = 1; }
    X(int, double) throw(int, double) { flag = 2; }
    explicit X(double) { flag = 4; }
    X(T) { flag = 5; }
    constexpr X(int) {}
};

struct Y : X {
    using X::X;
    
    
    
    
    
    Y(int i, double d) : X(i, d) { flag = 6; } 
};

void foo(Y) {}

void test() {
    Y ydi(3.14, 123);
    assert(flag == 1);
    
    Y yid(123, 3.14);
    assert(flag == 6);
    
    Y yd(3.14);
    assert(flag == 4);
    
    T t;
    foo(t); 
    assert(flag == 5);
    
    constexpr Y yi(456);
}

int main() {
    test();
}