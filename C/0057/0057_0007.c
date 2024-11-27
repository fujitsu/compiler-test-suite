
#include <assert.h>

char __;
extern char _Alignas(64) c;
extern char c;
char _Alignas(64) c = 1;

void test() {
    assert((long)&c % 64 == 0);
}

int main() {
    test();
}
