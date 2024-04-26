#include <stdio.h>
#include <math.h>

struct BF{
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
    unsigned int   bf7:4;
    unsigned int   bf6:4;
    unsigned int   bf5:4;
    unsigned int   bf4:4;
    unsigned int   bf3:4;
    unsigned int   bf2:4;
    unsigned int   bf1:4;
    unsigned int   bf0:4;
#else
    unsigned int   bf0:4;
    unsigned int   bf1:4;
    unsigned int   bf2:4;
    unsigned int   bf3:4;
    unsigned int   bf4:4;
    unsigned int   bf5:4;
    unsigned int   bf6:4;
    unsigned int   bf7:4;
#endif
};

union SCOPE{
    unsigned int   uli;
    struct BF           bf;
    float               fl;
};

struct st{
    union SCOPE   sc;
    int    member;
} st1;
int main()
{
    st1.sc.fl     = 1.000000000000000;
    st1.sc.bf.bf2 = 2;
    if (st1.sc.uli != 0x3f200000){
        printf("st1.sc.uli != 0x3f200000.  now, sc1.sc.uli =%8x\n",
                st1.sc.uli);
        printf("NG.\n");
    }
    else
        printf("PASS.\n");
}
