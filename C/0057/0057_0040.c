
#include <stdlib.h>

_Noreturn void f (){   
    exit(0);          
}

void test(){
    f();
}

int main(){
    test();
}