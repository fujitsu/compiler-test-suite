
#include <assert.h>

void test(){
    static_assert('a' != 'A', "Failed~");
}

int main(){
    test();
}