





#include <stdio.h>

class CH {
    public:
        char           c1 : 1;
        signed char    c2 : 2;
        char              : 0;
        unsigned char  c3 : 3;
};

class SH {
    public:
        short          s1 : 2;
        signed short   s2 : 4;
        short             : 0;
        unsigned short s3 : 6;
};

class IN {
    public:

        int               : 0;
        int            i1 : 4;
        signed int     i2 : 8;
        unsigned int   i3 : 16;
};

class LN {
    public:
        long           l1 : 16;
        long              : 0;
        signed long    l2 : 24;
        unsigned long  l3 : 31;
};

int main()
{
    CH ch;
    SH sh;
    IN in;
    LN ln;


    ch.c1 = '1';    ch.c2 = '2';    ch.c3 = '3';
    sh.s1 =  2 ;    sh.s2 =  8 ;    sh.s3 =  32;
    in.i1 =  15;    in.i2 = 255;    in.i3 = 67108863;
    ln.l1 = 67108864;  ln.l2 = 16777216;  ln.l3 = 2147483648;


#ifdef __GNUC__
    if( ch.c1 == -1 && ch.c2 == -2 && ch.c3 == 3 &&
        sh.s1 == -2 && sh.s2 == (signed short)0xfff8 && sh.s3 == 0x20 &&
        in.i1 == -1 && in.i2 == 0xffffffff && in.i3 == 0x0000ffff &&
        ln.l1 == 0 && ln.l2 == 0 && ln.l3 == 0 )
#else
    if( ch.c1 == 1 && ch.c2 == -2 && ch.c3 == 3 &&
        sh.s1 == 0x02 && sh.s2 == (signed short)0xfff8 && sh.s3 == 0x20 &&
        in.i1 == 0x0f && in.i2 == 0xffffffff && in.i3 == 0x0000ffff &&
        ln.l1 == 0 && ln.l2 == 0 && ln.l3 == 0 )
#endif


        printf("ok\n");
    else
        printf("ng\n");
}
