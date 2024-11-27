
#include <stdlib.h>
#include <stdnoreturn.h>

noreturn void test(){   
    exit(0);
}

int main(){
    test();
}