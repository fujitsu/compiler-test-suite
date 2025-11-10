#include <cassert>

int flag = 0;

struct X {
    template <class T>
    explicit X(T) throw() { flag = 1; }   
    
    template <class T1, class T2>
    X(T1, T2) throw(int) { flag = 2; }    

    template <class T1, class T2>
    constexpr X(T1, T2, void*) { } 
};

struct Y : X {
    using X::X;
};

void test() {
    Y yd(3.14);
    assert(flag == 1);
    
    Y ydi(3.14, 123);
    assert(flag == 2);
    
    constexpr Y yid(123, 3.14, 0);
}

int main() {
    test();
}