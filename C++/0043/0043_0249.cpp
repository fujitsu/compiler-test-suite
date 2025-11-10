#include <pthread.h>
#include <type_traits>
#include <cassert>


thread_local int x = 0;
void* func1(void *) {
    ++x;
    assert(x == 1);
    return 0;
}
void test1() {
    for (int i = 0; i < 10; ++i) { 
        pthread_t th;
        pthread_create(&th, NULL, func1, NULL);
        pthread_join(th, NULL);
    }
    assert(std::is_integral<decltype(x)>::value); 
}


thread_local int y = 1;
thread_local int *py = &y;
void* func2(void *) {
    *py = 2;
    assert(  y == 2);
    assert(*py == 2);
    return 0;
}
void test2() {
    pthread_t pth;
    pthread_create(&pth, NULL, func2, NULL);
    pthread_join(pth, NULL);
    assert(  y == 1);
    assert(*py == 1);
    assert(std::is_pointer<decltype(py)>::value);
}


thread_local int z[10] = {0};
void* func3(void *) {
    z[0] = 1;
    assert(z[0] == 1);
    return 0;
}
void test3() {
    pthread_t pth;
    pthread_create(&pth, NULL, func3, NULL);
    pthread_join(pth, NULL);
    assert(z[0] == 0);
    assert(std::is_array<decltype(z)>::value);
}


thread_local int a = 0;
thread_local int & ref = a;
void* func4(void *) {
    ref = 1;
    assert(a == 1);
    assert(ref == 1);
    return 0;
}
void test4() {
    pthread_t pth;
    pthread_create(&pth, NULL, func4, NULL);
    pthread_join(pth, NULL);
    assert(a == 0);
    assert(ref == 0);
    assert(std::is_lvalue_reference<decltype(ref)>::value);
}


int fun5() {
    return 1;
}
thread_local int && r_ref = fun5();
void test5() {
    assert(r_ref == 1);
    assert(std::is_rvalue_reference<decltype(r_ref)>::value);    
}

void test() {
    test1();
    test2();
    test3();
    test4();
    test5();
}

int main(int argc, char *argv[]) {
    test();
    return 0;
}