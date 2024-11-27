
#include <stdalign.h>

extern void abort(void);
#define ASSERT(expr) do { if (!(expr)) abort(); } while(0)
#define offsetof(st, m) ((unsigned long)(&((st*)0)->m))

struct X {
    char a;
    char alignas(alignof(int)) b;
};

void test() {
    char __;
    char alignas(32) a;
    ASSERT((long)&a % 32 == 0);
    
    ASSERT(alignof(float) == 4);
    
    ASSERT(offsetof(struct X, b) == 4);
}

int main() {
    test();
}
