
#include <assert.h>

char g__1;
char _Alignas (double) g_a;
char g__2;
char _Alignas (_Alignof (double)) g_b;

void test() {
    char l__1;
    char _Alignas (long double) l_a;
    char l__2;
    char _Alignas (_Alignof (long double)) l_b;
    
    assert((long)&l_a % _Alignof(long double) == 0);
    assert((long)&l_b % _Alignof(long double) == 0);
    
    assert((long)&g_a % _Alignof(double) == 0);
    assert((long)&g_b % _Alignof(double) == 0);
}

int main() {
    test();
}
