#include <cassert>
#include <cstring>

template<class T>  const char* foo() {
    return __func__ ;
}

struct St{
        template<class T>  const char* goo() {
            return __func__ ;
        }
};

void test(){    
    St st;

    assert(!strcmp(st.goo<int>(),"goo")) ;  
    assert(!strcmp(st.goo<char>(),"goo")) ;  
    assert(!strcmp(st.goo<double>(),"goo")) ;  
    assert(!strcmp(foo<int>(),"foo")) ;  
    assert(!strcmp(foo<char>(),"foo")) ;  
    assert(!strcmp(foo<double>(),"foo")) ;  
}

int main(){
    test();
} 

