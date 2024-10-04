#include <stdio.h>
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

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if (++ca == 2)
        printf("***-01*** O     K ***\n");
    else
        printf("***-01*** N     G ***\n");

    if (--ca == 1)
        printf("***-02*** O     K ***\n");
    else
        printf("***-02*** N     G ***\n");

    if (++ia == 3)
        printf("***-03*** O     K ***\n");
    else
        printf("***-03*** N     G ***\n");

    if (--ia == 2)
        printf("***-04*** O     K ***\n");
    else
        printf("***-04*** N     G ***\n");

    if (++sia == 5)
        printf("***-05*** O     K ***\n");
    else
        printf("***-05*** N     G ***\n");

    if (--sia == 4)
        printf("***-06*** O     K ***\n");
    else
        printf("***-06*** N     G ***\n");

    if (++lia == 9)
        printf("***-07*** O     K ***\n");
    else
        printf("***-07*** N     G ***\n");

    if (--lia == 8)
        printf("***-08*** O     K ***\n");
    else
        printf("***-08*** N     G ***\n");

    if (++llia == 17)
        printf("***-09*** O     K ***\n");
    else
        printf("***-09*** N     G ***\n");

    if (--llia == 16)
        printf("***-10*** O     K ***\n");
    else
        printf("***-10*** N     G ***\n");

    if (++scb == 33)
        printf("***-11*** O     K ***\n");
    else
        printf("***-11*** N     G ***\n");

    if (--scb == 32)
        printf("***-12*** O     K ***\n");
    else
        printf("***-12*** N     G ***\n");

    if (++sib == 65)
        printf("***-13*** O     K ***\n");
    else
        printf("***-13*** N     G ***\n");

    if (--sib == 64)
        printf("***-14*** O     K ***\n");
    else
        printf("***-14*** N     G ***\n");

    if (++ssib == 129)
        printf("***-15*** O     K ***\n");
    else
        printf("***-15*** N     G ***\n");

    if (--ssib == 128)
        printf("***-16*** O     K ***\n");
    else
        printf("***-16*** N     G ***\n");

    if (++slib == 257)
        printf("***-17*** O     K ***\n");
    else
        printf("***-17*** N     G ***\n");

    if (--slib == 256)
        printf("***-18*** O     K ***\n");
    else
        printf("***-18*** N     G ***\n");

    if (++sllib == 513)
        printf("***-19*** O     K ***\n");
    else
        printf("***-19*** N     G ***\n");

    if (--sllib == 512)
        printf("***-20*** O     K ***\n");
    else
        printf("***-20*** N     G ***\n");

    if (++ucc == 1)
        printf("***-21*** O     K ***\n");
    else
        printf("***-21*** N     G ***\n");

    if (--ucc == 0)
        printf("***-22*** O     K ***\n");
    else
        printf("***-22*** N     G ***\n");

    if (++uic == 2049)
        printf("***-23*** O     K ***\n");
    else
        printf("***-23*** N     G ***\n");

    if (--uic == 2048)
        printf("***-24*** O     K ***\n");
    else
        printf("***-24*** N     G ***\n");

    if (++usic == 4097)
        printf("***-25*** O     K ***\n");
    else
        printf("***-25*** N     G ***\n");

    if (--usic == 4096)
        printf("***-26*** O     K ***\n");
    else
        printf("***-26*** N     G ***\n");

    if (++ulic == 8193)
        printf("***-27*** O     K ***\n");
    else
        printf("***-27*** N     G ***\n");

    if (--ulic == 8192)
        printf("***-28*** O     K ***\n");
    else
        printf("***-28*** N     G ***\n");

    if (++ullic == 16385)
        printf("***-29*** O     K ***\n");
    else
        printf("***-29*** N     G ***\n");

    if (--ullic == 16384)
        printf("***-30*** O     K ***\n");
    else
        printf("***-30*** N     G ***\n");

    if (++fa == 32769)
        printf("***-31*** O     K ***\n");
    else
        printf("***-31*** N     G ***\n");

    if (--fa == 32768)
        printf("***-32*** O     K ***\n");
    else
        printf("***-32*** N     G ***\n");

    if (++da == 65537)
        printf("***-33*** O     K ***\n");
    else
        printf("***-33*** N     G ***\n");

    if (--da == 65536)
        printf("***-34*** O     K ***\n");
    else
        printf("***-34*** N     G ***\n");

    if (++lda == 131073)
        printf("***-35*** O     K ***\n");
    else
        printf("***-35*** N     G ***\n");

    if (--lda == 131072)
        printf("***-36*** O     K ***\n");
    else
        printf("***-36*** N     G ***\n");

    if (++st1.stsca == 101)
        printf("***-37*** O     K ***\n");
    else
        printf("***-37*** N     G ***\n");

    if (--st1.stsca == 100)
        printf("***-38*** O     K ***\n");
    else
        printf("***-38*** N     G ***\n");

    if (++st1.stullia == 201)
        printf("***-39*** O     K ***\n");
    else
        printf("***-39*** N     G ***\n");

    if (--st1.stullia == 200)
        printf("***-40*** O     K ***\n");
    else
        printf("***-40*** N     G ***\n");

    if (++st1.stda == 301)
        printf("***-41*** O     K ***\n");
    else
        printf("***-41*** N     G ***\n");

    if (--st1.stda == 300)
        printf("***-42*** O     K ***\n");
    else
        printf("***-42*** N     G ***\n");

    if (++un2.unca == 1)
        printf("***-43*** O     K ***\n");
    else
        printf("***-43*** N     G ***\n");

    if (--un2.unca == 0)
        printf("***-44*** O     K ***\n");
    else
        printf("***-44*** N     G ***\n");


    if (++un2.unca == 1)
        printf("***-47*** O     K ***\n");
    else
        printf("***-47*** N     G ***\n");

    if (--un2.unca == 0)
        printf("***-48*** O     K ***\n");
    else
        printf("***-48*** N     G ***\n");

    if (++arr[5] ==  6)
        printf("***-49*** O     K ***\n");
    else
        printf("***-49*** N     G ***\n");

    if (--arr[9] == 8)
        printf("***-50*** O     K ***\n");
    else
        printf("***-50*** N     G ***\n");

    if (*(++p) == 'b')
        printf("***-51*** O     K ***\n");
    else
        printf("***-51*** N     G ***\n");

    if (*(--p) == 'a')
        printf("***-52*** O     K ***\n");
    else
        printf("***-52*** N     G ***\n");
}
