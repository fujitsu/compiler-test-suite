
#include <assert.h>

int flag = 0;

int foo() {
    flag++;
    return flag;
}

int goo(int x) {
    return x*2;
}

void test1() {
    int n = _Generic(foo(),
                     char: foo(),
                     int: goo(3),   
                                    
                     default: foo()
                );
    assert(n == 6);
    assert(flag == 0); 
}

void test2() {
    int n = _Generic(foo(), 
                            
                            
                     char: foo(),
                     long: foo(),
                     default: goo(5)
                );
    assert(n == 10);
    assert(flag == 0); 
}

void test() {
    test1();
    test2();
}

int main() {
    test();
}