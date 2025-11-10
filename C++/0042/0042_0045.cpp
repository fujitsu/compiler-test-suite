#include <cassert>

int flag = 0;

struct X {
    X() { flag++; }
};

X foo() { return X(); }

struct Y {};
X operator*(Y) { return X(); }

void test() {
    
    decltype(foo())* p1;
    decltype( (123, foo()) )* p2;
    assert(flag == 0);
    
    decltype( (foo(), 456) )* p3; 
    assert(flag == 0); 
    
    
    decltype(*Y())* p4;
    decltype( (123, ::operator*(Y())) )* p5;
    decltype( (*Y(), 456) )* p6;
    assert(flag == 0);
}

int main() {
    test();
}
