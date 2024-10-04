#include <stdio.h>

#if defined(i386)
#define LITTLE_ENDIAN 1
#endif
int main()
{
    int                    ia;
    char                   ca;
    short int              sia;
    long int               lia;
    long long int          llia;

    signed int             sib;
    signed char            scb;
    signed short int       ssib;
    signed long int        slib;
    signed long long int   sllib;

    unsigned int           uic;
    unsigned char          ucc;
    unsigned short int     usic;
    unsigned long int      ulic;
    unsigned long long int ullic;

    float                  fa;
    double                 da;
    long double            lda;

    struct tag1 {
                  char      stca;
                  short int stsia;
                  int       stia;
                } st1;

    union  tag2 {
                  char      unca;
                  short int unsia;
                  int       unia;
                } un2;

    int           arr[10] = { 1,2,3,4,5,6,7,8,9,10 };
    char          *pa= "abcdefghijklmnopqrstuvwxyx";

    ia    = 2147483647;
    ca    = 127;
    sia   = 32767;
    lia   = 2147483647;
    llia  = 9223372036854775807LL;

    sib   = 2147483647;
    scb   = 127;
    ssib  = 32767;
    slib  = 2147483647;
    sllib = 9223372036854775807LL;

    uic   = 4294967295;
    ucc   = 255;
    usic  = 65535;
    ulic  = 4294967295;
    ullic = 9223372036854775807LL;

    fa    = 128;
    da    = 256;
    lda   = 512;

    st1.stca  = 255;
    st1.stsia = 32767;
    st1.stia  = 2147483647;

    un2.unia  = 2147483647;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    ia--;
    if (ia == 2147483646)
        printf("***-01*** O     K ***\n");
    else
        printf("***-01*** N     G ***\n");

    ca--;
    if (ca == 126)
        printf("***-02*** O     K ***\n");
    else
        printf("***-02*** N     G ***\n");

    sia--;
    if (sia == 32766)
        printf("***-03*** O     K ***\n");
    else
        printf("***-03*** N     G ***\n");

    lia--;
    if (lia == 2147483646)
        printf("***-04*** O     K ***\n");
    else
        printf("***-04*** N     G ***\n");

    llia--;
    if (llia == 9223372036854775806LL)
        printf("***-05*** O     K ***\n");
    else
        printf("***-05*** N     G ***\n");

    sib--;
    if (sib == 2147483646)
        printf("***-06*** O     K ***\n");
    else
        printf("***-06*** N     G ***\n");

    scb--;
    if (scb == 126)
        printf("***-07*** O     K ***\n");
    else
        printf("***-07*** N     G ***\n");

    ssib--;
    if (ssib == 32766)
        printf("***-08*** O     K ***\n");
    else
        printf("***-08*** N     G ***\n");

    slib--;
    if (slib == 2147483646)
        printf("***-09*** O     K ***\n");
    else
        printf("***-09*** N     G ***\n");

    sllib--;
    if (sllib == 9223372036854775806LL)
        printf("***-10*** O     K ***\n");
    else
        printf("***-10*** N     G ***\n");

    uic --;
    if (uic == 4294967294)
        printf("***-11*** O     K ***\n");
    else
        printf("***-11*** N     G ***\n");

    ucc --;
    if (ucc == 254)
        printf("***-12*** O     K ***\n");
    else
        printf("***-12*** N     G ***\n");

    usic --;
    if (usic == 65534)
        printf("***-13*** O     K ***\n");
    else
        printf("***-13*** N     G ***\n");

    ulic --;
    if (ulic == 4294967294)
        printf("***-14*** O     K ***\n");
    else
        printf("***-14*** N     G ***\n");

    ullic --;
    if (ullic == 9223372036854775806LL)
        printf("***-15*** O     K ***\n");
    else
        printf("***-15*** N     G ***\n");

    fa --;
    if (fa == 127)
        printf("***-16*** O     K ***\n");
    else
        printf("***-16*** N     G ***\n");

    da --;
    if (da == 255)
        printf("***-17*** O     K ***\n");
    else
        printf("***-17*** N     G ***\n");

    lda --;
    if (lda == 511)
        printf("***-18*** O     K ***\n");
    else
        printf("***-18*** N     G ***\n");

    st1.stca--;

#if defined(S_CHAR) || defined(__GNUC__)
    if (st1.stca == -2 )
#else
    if (st1.stca == 254 )
#endif
        printf("***-19*** O     K ***\n");
    else
        printf("***-19*** N     G ***\n");

    st1.stsia--;
    if (st1.stsia == 32766)
        printf("***-20*** O     K ***\n");
    else
        printf("***-20*** N     G ***\n");

    st1.stia--;
    if (st1.stia == 2147483646)
        printf("***-21*** O     K ***\n");
    else
        printf("***-21*** N     G ***\n");

    un2.unia--;

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if (un2.unca == 0xfffffffe)
#else
    if (un2.unca == 127)
#endif
        printf("***-22*** O     K ***\n");
    else
        printf("***-22*** N     G ***\nun2.unca:%x\n",un2.unca);

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if (un2.unsia == 0xfffffffe)
#else
    if (un2.unsia == 32767)
#endif
        printf("***-23*** O     K ***\n");
    else
        printf("***-23*** N     G ***\nun2.unsia:%x\n",un2.unsia);

    if (un2.unia == 2147483646)
        printf("***-24*** O     K ***\n");
    else
        printf("***-24*** N     G ***\n");

    arr[3]--;
    if (arr[3] == 3)
        printf("***-25*** O     K ***\n");
    else
        printf("***-25*** N     G ***\n");

    pa++; pa++;
    pa--;
    if (*pa == 'b')
        printf("***-26*** O     K ***\n");
    else
        printf("***-26*** N     G ***\n");
}
