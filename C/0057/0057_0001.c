
#include <assert.h>

char g__1;
int  _Alignas(0)    g_a0 = 10;
char g__2;
char _Alignas(1)    g_a1 = 1;
char _Alignas(2)    g_a2 = 2;
char _Alignas(4)    g_a3 = 3;
char _Alignas(8)    g_a4 = 4;
char _Alignas(16)   g_a5 = 5;
char _Alignas(32)   g_a6 = 6;
char _Alignas(64)   g_a7 = 7;
char _Alignas(128)  g_a8 = 8;

void test() {
    char l__1;
    int  _Alignas(0)    l_a0 = 10;
    char l__2;
    char _Alignas(1)    l_a1 = 1;
    char _Alignas(2)    l_a2 = 2;
    char _Alignas(4)    l_a3 = 3;
    char _Alignas(8)    l_a4 = 4;
    char _Alignas(16)   l_a5 = 5;
    char _Alignas(32)   l_a6 = 6;
    char _Alignas(64)   l_a7 = 7;
    char _Alignas(128)  l_a8 = 8;
    
    assert((long)&l_a0 % 4 == 0);
    assert((long)&l_a1 % 1 == 0);
    assert((long)&l_a2 % 2 == 0);
    assert((long)&l_a3 % 4 == 0);
    assert((long)&l_a4 % 8 == 0);
    assert((long)&l_a5 % 16 == 0);
    assert((long)&l_a6 % 32 == 0);
    assert((long)&l_a7 % 64 == 0);
    assert((long)&l_a8 % 128 == 0);
    
    assert((long)&g_a0 % 4 == 0);
    assert((long)&g_a1 % 1 == 0);
    assert((long)&g_a2 % 2 == 0);
    assert((long)&g_a3 % 4 == 0);
    assert((long)&g_a4 % 8 == 0);
    assert((long)&g_a5 % 16 == 0);
    assert((long)&g_a6 % 32 == 0);
    assert((long)&g_a7 % 64 == 0);
    assert((long)&g_a8 % 128 == 0);
}

int main() {
    test();
}
