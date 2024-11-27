
#include <assert.h>
#define offsetof(st, m) ((unsigned long)(&((st*)0)->m))

char __;
char _Alignas(1) _Alignas(2) _Alignas(4) _Alignas(8) _Alignas(16) g_a;

struct X {
    char a;
    char _Alignas(1) _Alignas(2) _Alignas(4) _Alignas(8) _Alignas(16) b;
};

void test() {
    char ___;
    char _Alignas(1) _Alignas(2) _Alignas(4) _Alignas(8) _Alignas(16) l_a;
    
    assert((long)&l_a % 16 == 0);
    assert((long)&g_a % 16 == 0);
    
    assert(offsetof(struct X, b) == 16);
}

int main() {
    test();
}
