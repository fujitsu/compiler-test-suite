#include <cassert>
#include <cstring>

const char* foo() {
    return __func__ ;
}

void test(){
    assert(!strcmp(foo(),"foo")) ;  
}

int main(){
    test();
} 

