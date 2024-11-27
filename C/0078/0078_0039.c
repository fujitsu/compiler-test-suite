#include <stdio.h>


static int              i0 = 0x7fffffff;
static unsigned int     i1 = 0xffffffff;
int main() {
        int             a;
        unsigned int    b;

        a = i0;
        b = i1;

        a = ~a;
        b = ~b;

        printf("(unsigned long long)%#010x << 32 | %x : %llx\n",
                a, b, ((unsigned long long)a << 32) | b);

        return 0;
}

