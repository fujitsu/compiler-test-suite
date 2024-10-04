#include <stdio.h>
int main()
{
    char                   ca;
    int                    ia;
    short int              sia;
    long int               lia;
    long long int          llia;
    signed char            sca;
    signed int             siia;
    signed short int       ssia;
    signed long int        slia;
    signed long long int   sllia;
    unsigned char          uca;
    unsigned int           uia;
    unsigned short  int    usia;
    unsigned long int      ulia;
    unsigned long long int ullia;

    ca      =  0xff;
    ia      =  0x00000000;
    sia     =  0xaaaa;
    lia     =  0x55555555;
    llia    =  0xcccccccc33333333LL;
    sca     =  0x77;
    siia    =  0x1111eeee;
    ssia    =  0x7777;
    slia    =  0xf0f0f0f0;
    sllia   =  0x9999999966666666LL;
    uca     =  0x22;
    uia     =  0x4444bbbb;
    usia    =  0xab54;
    ulia    =  0x1234edcb;
    ullia   =  0xfedcba9876543210LL;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(~ca == 0x00)
        printf("***-01*** O     K ***\n");
    else
        printf("***-01**** N   G ****\n");

#if INT64
    if(~ia == 0xffffffffffffffff)
#else
    if(~ia == 0xffffffff)
#endif
        printf("***-02*** O     K ***\n");
    else
        printf("***-02**** N   G ****\n");

    if(~sia == 0x5555)
        printf("***-03*** O     K ***\n");
    else
        printf("***-03**** N   G ****\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(~lia == 0xffffffffaaaaaaaa)
#else
    if(~lia == 0xaaaaaaaa)
#endif
        printf("***-04*** O     K ***\n");
    else
        printf("***-04**** N   G ****\n");

    if(~llia == 0x33333333ccccccccLL)
        printf("***-05*** O     K ***\n");
    else
        printf("***-05**** N   G ****\n");

#if INT64
    if(~sca == 0xffffffffffffff88)
#else
    if(~sca == 0xffffff88)
#endif
        printf("***-06*** O     K ***\n");
    else
        printf("***-06**** N   G ****\n");

#if INT64
    if(~siia == 0xffffffffeeee1111)
#else
    if(~siia == 0xeeee1111)
#endif
        printf("***-07*** O     K ***\n");
    else
        printf("***-07**** N   G ****\n");

#if INT64
    if(~ssia == 0xffffffffffff8888)
#else
    if(~ssia == 0xffff8888)
#endif
        printf("***-08*** O     K ***\n");
    else
        printf("***-08**** N   G ****\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(~slia == 0xffffffff0f0f0f0f)
#else
    if(~slia == 0x0f0f0f0f)
#endif
        printf("***-09*** O     K ***\n");
    else
        printf("***-09**** N   G ****\n");

    if(~sllia == 0x6666666699999999LL)
        printf("***-10*** O     K ***\n");
    else
        printf("***-10**** N   G ****\n");

#if INT64
    if(~uca == 0xffffffffffffffdd)
#else
    if(~uca == 0xffffffdd)
#endif
        printf("***-11*** O     K ***\n");
    else
        printf("***-11**** N   G ****\n");

#if INT64
    if(~uia == 0xffffffffbbbb4444)
#else
    if(~uia == 0xbbbb4444)
#endif
        printf("***-12*** O     K ***\n");
    else
        printf("***-12**** N   G ****\n");

#if INT64
    if(~usia == 0xffffffffffff54ab)
#else
    if(~usia == 0xffff54ab)
#endif
        printf("***-13*** O     K ***\n");
    else
        printf("***-13**** N   G ****\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(~ulia == 0xffffffffedcb1234)
#else
    if(~ulia == 0xedcb1234)
#endif
        printf("***-14*** O     K ***\n");
    else
        printf("***-14**** N   G ****\n");

    if(~ullia == 0x0123456789abcdefLL)
        printf("***-15*** O     K ***\n");
    else
        printf("***-15**** N   G ****\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
