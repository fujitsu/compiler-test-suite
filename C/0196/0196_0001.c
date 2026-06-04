/*
    Annex L.L.3/p2
    All undefined behavior shall be limited to bounded undefined behavior, except for the
    following which are permitted to result in critical undefined behavior:
    ¡ª The value of a pointer that refers to space deallocated by a call to the free or realloc
    function is used.
*/
#include <stdlib.h>
#include <assert.h>

void test(){
        int* a = (int*)malloc(sizeof(int));
        assert(a);
        free(a);
        int b = *a;            //  gcc  :  no warning,no error.
                               //  clang:  no warning,no error.
}

int main(){
    test();
}
