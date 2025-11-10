#include <cassert>
#include <stdio.h>
#include <pthread.h>

int flag = 0;

template <int N>
struct X {
    int data;
    X(int x) : data(x) {}
    ~X() {
        flag++;
        assert(flag == N);
    }
};

int n = 0;
X<9> x9 = n+9;
thread_local X<5> x5 = n+5;
X<8> x8 = n+8;
thread_local X<4> x4 = n+4;

void foo() {
    try {
        static X<7> x7 = n+7;
        throw 1;
    } catch (...) {
        thread_local X<3> x3 = n+3;
        static X<6> x6 = n+6;
    }
}

void bar() {
    thread_local X<2> x2 = n+2; 
    {
        thread_local X<1> x1 = n+1;
    }
}

void* thmain(void*) {
    (void)x5;
    (void)x4;
    foo();
    bar();
    return 0;
}




                          
void test() {
    pthread_t th;
    pthread_create(&th, 0, thmain, 0);
    pthread_join(th, 0);
}

int main() {
    test();
}
