#include <cassert>


#define CONNECT1(v)   1##v
#define CONNECT2(v)   v##2

void test(int a) {
    int m = CONNECT1();   
    int n = CONNECT2();   
    
    assert(m==1);
    assert(n==2);
}

int main(){
    test(1);
}