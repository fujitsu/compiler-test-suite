#include <cassert>


thread_local int g_x;
namespace {
    thread_local int n_x;
}


void test2() {
    thread_local int l_x;
}


struct A{
    static thread_local int m_x;
};


void test4(int i) {
    thread_local int x = 0;
    ++x;
    assert( x == i);
}

void test() {
    test2();
    test4(1);
    test4(2);
    test4(3);
    
}

int main() {
    test();
}