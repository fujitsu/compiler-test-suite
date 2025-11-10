#include <thread>
#include <cassert>

class A {
public:
    static thread_local int m_a;
};
thread_local int A::m_a;

class B {
public:
    static int m_b;
};
int B::m_b;

void fun(int i) {
    A a;
    ++a.m_a;
    assert(a.m_a == 1); 
    
    B b;
    ++b.m_b;
    assert(b.m_b == i); 
}

void test() {
    for (int i = 1; i < 10; ++i) {
        std::thread th1(fun, i);
        th1.join();
    }
}

int main() {
    test();
    return 0;
}