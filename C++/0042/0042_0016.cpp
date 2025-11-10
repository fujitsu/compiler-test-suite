#include <cassert>
#include <cstring>

struct St{
    static const char* foo(){
        return __func__ ;
    }
};

void test(){
    assert(!strcmp(St::foo(),"foo")) ;  
}

int main(){
    test();
} 

