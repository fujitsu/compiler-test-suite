#include <thread>
#include <cassert>

static thread_local int g_x = 0;
void test1() {
    ++g_x;  
    assert(g_x == 1);
}

namespace __ns__{
    static thread_local int n_x = 0;
}
void test2() {
    ++__ns__::n_x;
    assert(__ns__::n_x == 1);
}

void test3() {
    static thread_local int l_x = 0;
    ++l_x;
    assert(l_x == 1);
}

struct A {
    static thread_local int m_x;
};
thread_local int A::m_x = 0;
void test4() {
    ++A::m_x;
    assert(A::m_x == 1);
}

void test() {
    for (int i = 0; i < 10; ++i) {
        std::thread th1(test1);
        std::thread th2(test2);
        std::thread th3(test3);
        std::thread th4(test4);
        th1.join();
        th2.join();
        th3.join();
        th4.join();
    }
}

int main() {
    test();
    return 0;
}