#include <stdio.h>

#if INT64
#define int __int32
#endif

#define BSIZE 20

#define ns_1     1
#define ns_2     3
#define ns_3     7
#define ns_4    15
#define ns_5    31
#define ns_6    63
#define ns_7   127
#define ns_r    15

struct  BITFIELD {
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
    unsigned int    bitr:4;
    unsigned int    bit7:7;
    unsigned int    bit6:6;
    unsigned int    bit5:5;
    unsigned int    bit4:4;
    unsigned int    bit3:3;
    unsigned int    bit2:2;
    unsigned int    bit1:1;
#else
    unsigned int    bit1:1;
    unsigned int    bit2:2;
    unsigned int    bit3:3;
    unsigned int    bit4:4;
    unsigned int    bit5:5;
    unsigned int    bit6:6;
    unsigned int    bit7:7;
    unsigned int    bitr:4;
#endif
};


static  unsigned int    ans_setary [BSIZE] = {
    0x00000000, 0xa4420811, 0x48841022, 0xecc61833, 0x11082044,
    0xb54a2855, 0x598c3066, 0xfdce3877, 0x02104088, 0xa6524899,
    0x4a9450aa, 0xeed658bb, 0x131860cc, 0xb75a68dd, 0x5b9c70ee,
    0xffde78ff, 0x00208100, 0xa4628911, 0x48a49122, 0xece69933
};


static unsigned int ans_all = 0xece69933;

void setary(struct BITFIELD *arpt);
int main()
{
    int i;
    void *tp1;
    unsigned int *tp2;
    struct  BITFIELD    bf, bfary[BSIZE];

    bf.bit1 = ns_1;
    bf.bit2 = ns_2;
    bf.bit3 = ns_3;
    bf.bit4 = ns_4;
    bf.bit5 = ns_5;
    bf.bit6 = ns_6;
    bf.bit7 = ns_7;
    bf.bitr = ns_r;

    setary(bfary);
    for (i = 0; i < BSIZE; i++){
        if ((i % 2) == 0){
            bf.bit1 |= bfary[i].bit1;
            bf.bit2 |= bfary[i].bit2;
            bf.bit3 |= bfary[i].bit3;
            bf.bit4 |= bfary[i].bit4;
            bf.bit5 |= bfary[i].bit5;
            bf.bit6 |= bfary[i].bit6;
            bf.bit7 |= bfary[i].bit7;
            bf.bitr |= bfary[i].bitr;
        }
        else{
            bf.bit1 &= bfary[i].bit1;
            bf.bit2 &= bfary[i].bit2;
            bf.bit3 &= bfary[i].bit3;
            bf.bit4 &= bfary[i].bit4;
            bf.bit5 &= bfary[i].bit5;
            bf.bit6 &= bfary[i].bit6;
            bf.bit7 &= bfary[i].bit7;
            bf.bitr &= bfary[i].bitr;
        }
    }
    tp1 = (void *)&bf;
    tp2 = (unsigned int *)tp1;
    if (*tp2 != ans_all)
        printf("NG.\n");
    else
        printf("PASS.\n");
}


void setary(struct BITFIELD *arpt)
{
    int i;
    void *tp1;
    unsigned int *tp2;

    for ( i = 0; i < BSIZE; i++){
        arpt->bit1 = (i % (ns_1 + 1));
        arpt->bit2 = (i % (ns_2 + 1));
        arpt->bit3 = (i % (ns_3 + 1));
        arpt->bit4 = (i % (ns_4 + 1));
        arpt->bit5 = (i % (ns_5 + 1));
        arpt->bit6 = (i % (ns_6 + 1));
        arpt->bit7 = (i % (ns_7 + 1));
        arpt->bitr = (i % (ns_r + 1));
        tp1 = (void *)arpt;
        tp2 = (unsigned int *)tp1;
        if (*tp2 != ans_setary[i])
            printf("NG.(in setary(): i=%d)\n", i);

        arpt++;
    }
}
