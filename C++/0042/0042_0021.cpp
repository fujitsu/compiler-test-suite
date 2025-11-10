#include <cassert>
#include <cstring>

void test() try{
    int* p = nullptr ;
    throw p;
}catch(...){
    const char* pfunc = __func__ ;
    assert(!strcmp(pfunc, "test"));
}

int main(){
    test();
} 

