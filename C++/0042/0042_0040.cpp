#include <cassert>
#include <cstring>

#define STR(s)  #s

void test(){    
    assert(!strcmp("", STR()));            
}

int main(){
    test();
} 

