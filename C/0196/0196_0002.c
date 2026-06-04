/*
    Annex L.L.3/p2
    All undefined behavior shall be limited to bounded undefined behavior, except for the
    following which are permitted to result in critical undefined behavior:
    ¡ª A string or wide string utility function accesses an array beyond the end of an object
*/

#include <string.h>

void test(){
    char src[5] = "abcd";  
    char des[5] = {0};
    strcpy(des, src+8);        //  gcc  :  no warning,no error.
                               //  clang:  no warning,no error.
}

int main(){
    test();
}
