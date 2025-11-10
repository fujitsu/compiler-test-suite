#include <cassert>
#include <cstring>

void test(){
    auto lmd = []{ return __func__ ;} ;
    const char* p = "operator()";
    assert( !strcmp(lmd(), p) );
}

int main(){
    test();
} 

