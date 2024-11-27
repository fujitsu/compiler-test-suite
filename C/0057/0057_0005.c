
#include <assert.h>
#define offsetof(st, m) ((unsigned long)(&((st*)0)->m))

char __1;
long _Alignas(0) g_a;
char __2;
long _Alignas(16) _Alignas(0) g_b;

struct X {
    char a;
    double _Alignas(0) b;
    char c;
    short _Alignas(0) _Alignas(4) d;
};

void test() {
    char ___1;
    long _Alignas(0) l_a;
    char ___2;
    long _Alignas(16) _Alignas(0) l_b;
    
    assert((long)&l_a % 8 == 0);
    assert((long)&l_b % 16 == 0);
    assert((long)&g_a % 8 == 0);
    assert((long)&g_b % 16 == 0);
    
    assert(offsetof(struct X, c) == 16);
    assert(offsetof(struct X, d) == 20);
}

int main() {
    test();
}
