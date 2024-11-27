#include <stdio.h>
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
static  unsigned int       ans_setary [ 20 ] = {
    0x00000000, 0xa4420811, 0x48841022, 0xecc61833, 0x11082044,
    0xb54a2855, 0x598c3066, 0xfdce3877, 0x02104088, 0xa6524899,
    0x4a9450aa, 0xeed658bb, 0x131860cc, 0xb75a68dd, 0x5b9c70ee,
    0xffde78ff, 0x00208100, 0xa4628911, 0x48a49122, 0xece69933
};

static unsigned int ans_all = 0xece69933;
void setary(struct BITFIELD *);
int main()
{
    int i;
    volatile void *tp1;
    volatile unsigned int *tp2;
    struct  BITFIELD    bf, bfary[ 20 ];
    tp1 = (void *)&bf;
    tp2 = (unsigned int *)tp1;
    *tp2=0;
    bf.bit1 =  1L ;
    bf.bit2 =  3L ;
    bf.bit3 =  7L ;
    bf.bit4 =  15L ;
    bf.bit5 =  31L ;
    bf.bit6 =  63L ;
    bf.bit7 =  127L ;
    bf.bitr =  15L ;
    setary(bfary);
    puts("OK") ;
}

void setary(struct BITFIELD *arpt)
{
    int i;
    volatile void *tp1;
    volatile unsigned int *tp2;
    for ( i = 0; i <  20 ; i++){
        tp1 = (void *)arpt;
        tp2 = (unsigned int *)tp1;
        *tp2=0;
        arpt->bit1 = (i % ( 1L  + 1));
        arpt->bit2 = (i % ( 3L  + 1));
        arpt->bit3 = (i % ( 7L  + 1));
        arpt->bit4 = (i % ( 15L  + 1));
        arpt->bit5 = (i % ( 31L  + 1));
        arpt->bit6 = (i % ( 63L  + 1));
        arpt->bit7 = (i % ( 127L  + 1));
        arpt->bitr = (i % ( 15L  + 1));
        if (*tp2 != ans_setary[i])
            printf("SCQIH03  NG.(in setary(): i=%ld) NG=%08lx ANS=%08lx\n",
                   i, *tp2, ans_setary[i]);
        arpt++;
    }
}
