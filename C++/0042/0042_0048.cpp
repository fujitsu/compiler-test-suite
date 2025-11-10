#include <cassert>
#include <stdio.h>
#include <pthread.h>

int flag = 0;

template <int N>
struct X {
    X(int) { flag--; }
    ~X() {
        flag++;
        assert(flag == N);
    }
};

int n = 1;
thread_local X<3> x3 = n;
             X<6> x6 = n;
thread_local X<2> x2 = n;
             X<5> x5 = n;
thread_local X<1> x1 = n;
             X<4> x4 = n;


                          
void test() {
    
    (void)x3;
    (void)x2;
    (void)x1;
    assert(flag == -6);
    flag = 0;
}

int main() {
    test();
}
