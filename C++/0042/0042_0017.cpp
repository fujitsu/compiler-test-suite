#include <cassert>
#include <cstring>

struct TestStruct{
    TestStruct ():name(__func__) {}
    const char* name;
};

void test(){
    TestStruct ts;
    int nRet = strcmp(ts.name, "TestStruct") ;
    assert(nRet == 0);  
}

int main(){
    test();
} 
