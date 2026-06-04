/*
 K.3.5.3.14/p2, p5
 2 Neither s nor format shall be a null pointer. Any argument indirected though in order
 to store converted input shall not be a null pointer.
 5 The vsscanf_s function returns the value of the macro EOF if an input failure occurs
 before any conversion or if there is a runtime-constraint violation. 
*/

#include <stdarg.h>
#include <stdio.h>
#include <assert.h>

// s ==  NULL
void test1(int pa, ...) {
    va_list va;
    va_start(va, pa);
    assert(EOF == vsscanf_s(NULL, "%s %d", va));
    va_end(va);
}

// format ==  NULL
void test2(int pa, ...) {
    va_list va;
    va_start(va, pa);
    char src[20] = "test 1";
    assert(EOF == vsscanf_s(src, NULL, va));
    va_end(va);
}

// arg == NULL
void test3(int pa, ...) {
    va_list va;
    va_start(va, pa);
    char src[20] = "test 1";
    assert(EOF == vsscanf(src, "%s %d", va));
    va_end(va);
}

void test() {
    char str[10];
    int x = 1;
    test1(1, str, x);
    test2(1, str, x);
    test3(1, str, x);
}

int main(int argc, char *argv[]) {
    test();
    return 0;
}