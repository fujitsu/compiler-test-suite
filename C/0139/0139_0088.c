#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    char                   ca;
    int                    ia;
    short int              sia;
    long int               lia;
    long long int          llia;

    signed char            scb;
    signed int             sib;
    signed short int       ssib;
    signed long int        slib;
    signed long long int   sllib;

    unsigned char          ucc;
    unsigned int           uic;
    unsigned short int     usic;
    unsigned long int      ulic;
    unsigned long long int ullic;

    float                  fa;
    double                 da;
    long double            lda;

    struct tag1 {
                  signed char             stsca;
                  unsigned long long int  stullia;
                  double                  stda;
                } st1;

    union  tag2 {
                  char      unca;
                  short int unsia;
                  int       unia;
                } un2;

    int         arr[10] = { 0,1,2,3,4,5,6,7,8,9 };
    char        *p        = "abcdefghijklmnopqrstuvwxyz";

    ca          =  1;
    ia          =  2;
    sia         =  4;
    lia         =  8;
    llia        =  16;
    scb         =  32;
    sib         =  64;
    ssib        =  128;
    slib        =  256;
    sllib       =  512;
    ucc         =  1024;
    uic         =  2048;
    usic        =  4096;
    ulic        =  8192;
    ullic       =  16384;
    fa          =  32768;
    da          =  65536;
    lda         =  131072;
    st1.stsca   =  100;
    st1.stullia =  200;
    st1.stda    =  300;
    un2.unca    =  16777728;
    un2.unsia	=  0;

    printf("\n");

    if (++ca == 2)
        printf("***\n");
    else
        printf("***\n");

    if (--ca == 1)
        printf("***\n");
    else
        printf("***\n");

    if (++ia == 3)
        printf("***\n");
    else
        printf("***\n");

    if (--ia == 2)
        printf("***\n");
    else
        printf("***\n");

    if (++sia == 5)
        printf("***\n");
    else
        printf("***\n");

    if (--sia == 4)
        printf("***\n");
    else
        printf("***\n");

    if (++lia == 9)
        printf("***\n");
    else
        printf("***\n");

    if (--lia == 8)
        printf("***\n");
    else
        printf("***\n");

    if (++llia == 17)
        printf("***\n");
    else
        printf("***\n");

    if (--llia == 16)
        printf("***\n");
    else
        printf("***\n");

    if (++scb == 33)
        printf("***\n");
    else
        printf("***\n");

    if (--scb == 32)
        printf("***\n");
    else
        printf("***\n");

    if (++sib == 65)
        printf("***\n");
    else
        printf("***\n");

    if (--sib == 64)
        printf("***\n");
    else
        printf("***\n");

    if (++ssib == 129)
        printf("***\n");
    else
        printf("***\n");

    if (--ssib == 128)
        printf("***\n");
    else
        printf("***\n");

    if (++slib == 257)
        printf("***\n");
    else
        printf("***\n");

    if (--slib == 256)
        printf("***\n");
    else
        printf("***\n");

    if (++sllib == 513)
        printf("***\n");
    else
        printf("***\n");

    if (--sllib == 512)
        printf("***\n");
    else
        printf("***\n");

    if (++ucc == 1)
        printf("***\n");
    else
        printf("***\n");

    if (--ucc == 0)
        printf("***\n");
    else
        printf("***\n");

    if (++uic == 2049)
        printf("***\n");
    else
        printf("***\n");

    if (--uic == 2048)
        printf("***\n");
    else
        printf("***\n");

    if (++usic == 4097)
        printf("***\n");
    else
        printf("***\n");

    if (--usic == 4096)
        printf("***\n");
    else
        printf("***\n");

    if (++ulic == 8193)
        printf("***\n");
    else
        printf("***\n");

    if (--ulic == 8192)
        printf("***\n");
    else
        printf("***\n");

    if (++ullic == 16385)
        printf("***\n");
    else
        printf("***\n");

    if (--ullic == 16384)
        printf("***\n");
    else
        printf("***\n");

    if (++fa == 32769)
        printf("***\n");
    else
        printf("***\n");

    if (--fa == 32768)
        printf("***\n");
    else
        printf("***\n");

    if (++da == 65537)
        printf("***\n");
    else
        printf("***\n");

    if (--da == 65536)
        printf("***\n");
    else
        printf("***\n");

    if (++lda == 131073)
        printf("***\n");
    else
        printf("***\n");

    if (--lda == 131072)
        printf("***\n");
    else
        printf("***\n");

    if (++st1.stsca == 101)
        printf("***\n");
    else
        printf("***\n");

    if (--st1.stsca == 100)
        printf("***\n");
    else
        printf("***\n");

    if (++st1.stullia == 201)
        printf("***\n");
    else
        printf("***\n");

    if (--st1.stullia == 200)
        printf("***\n");
    else
        printf("***\n");

    if (++st1.stda == 301)
        printf("***\n");
    else
        printf("***\n");

    if (--st1.stda == 300)
        printf("***\n");
    else
        printf("***\n");

    if (++un2.unca == 1)
        printf("***\n");
    else
        printf("***\n");

    if (--un2.unca == 0)
        printf("***\n");
    else
        printf("***\n");

    if (++un2.unsia == 1)
        printf("***\n");
    else
        printf("***\n");

    if (--un2.unsia == 0)
        printf("***\n");
    else
        printf("***\n");

    if (++un2.unca == 1)
        printf("***\n");
    else
        printf("***\n");

    if (--un2.unca == 0)
        printf("***\n");
    else
        printf("***\n");

    if (++arr[5] ==  6)
        printf("***\n");
    else
        printf("***\n");

    if (--arr[9] == 8)
        printf("***\n");
    else
        printf("***\n");

    if (*(++p) == 'b')
        printf("***\n");
    else
        printf("***\n");

    if (*(--p) == 'a')
        printf("***\n");
    else
        printf("***\n");
exit (0);
}
