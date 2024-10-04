#include <stdio.h>

#if defined(i386)
#define LITTLE_ENDIAN 1
#endif
int main()
{
    char                   ca=127;
    double                 da=1.25;
    struct tag1  {
                   int     stia;
                   char    stca;
                   short   stsa;
                 };
    struct tag1  *st1,rst;
    int                    ia = 2147483647;
    int                    ib=1;
    short int              sia = 32767;
    float                  fa = 127.5;
    union  tag2  {
                   char    unca;
                   short   unsia;
                   int     unia;
                 };
    union  tag2  *un1,run;
    char                   cb=-128;
    long long int          llia=2147483647;
    unsigned int           uia;
    unsigned int           uib=4294967295;
    long double            lda=256.125;
    char                   *pca,pcb=100;
    signed short int       ssia=32767;
    int                    arr[10] = { 0,1,2,3,4,5,6,7,8,9 };
    char                   *cc,cd=255;
    int                    func1();
    int                    (*func2)();
    double                 *pda;
    double                 dbla = 256.0000;
    signed char            sca = -1;
    int                    a  = 1;
    void                   *vp;
    struct tag3 { char a,b,c,d; } st,*stp,*stxp,stx={1,2,3,4};
    struct tag4 { int  a,b,c,d; } st2,*stp2;
    long double            *lp,l=1.0;
    char                   *ap[10],c1,c2,c3,c4;
    double                 db = 3;
    volatile short int     vsia = 4;
    const long long int    clli = 5;
    float                  *fb,fc=6;


    printf("*** TEST FOR EXPRESSION *** STARTED\n");

#if INT64
    if(sizeof((int)ca) == 8)
#else
    if(sizeof((int)ca) == 4)
#endif
    {
        if((int)ca  == 127)
            printf("***-01*** O     K ***\n");
        else
            printf("***-01**** N   G ****\n");
    }
    else
        printf("***-01**** N   G ****\n");

#if INT64
    if(sizeof((int)da) == 8)
#else
    if(sizeof((int)da) == 4)
#endif
    {
        if((int)da  ==  1)
            printf("***-02*** O     K ***\n");
        else
            printf("***-02**** N   G ****\n");
    }
    else
        printf("***-02**** N   G ****\n");

    st1 = &rst;
    st1->stia = 2147483647;
    st1->stca = 127;
    st1->stsa = 32767;
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof((volatile int *)st1) == 8)
#else
    if(sizeof((volatile int *)st1) == 4)
#endif
    {
        if(((struct tag1 *)((volatile int *)st1))->stia == 2147483647)
            printf("***-03*** O     K ***\n");
        else
            printf("***-03**** N   G ****\n");
    }
    else
        printf("***-03**** N   G ****\n");

    if(sizeof((char)ia) == 1)
    {
            printf("***-04*** O     K ***\n");
    }
    else
        printf("***-04**** N   G ****\n");

    if(sizeof((char)fa) == 1)
    {
        if((char)fa == 127)
            printf("***-05*** O     K ***\n");
        else
            printf("***-05**** N   G ****\n");
    }
    else
        printf("***-05**** N   G ****\n");

    un1 = &run;
    un1->unia = 2147483647;
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof((char *)un1) == 8)
#else
    if(sizeof((char *)un1) == 4)
#endif
    {
#if INT64
        if(((union tag2 *)((char *)un1))->unca == 0)
#elif LITTLE_ENDIAN ||__x86_64__  || __aarch64__
        if(((union tag2 *)((char *)un1))->unca == -1)
#else
        if(((union tag2 *)((char *)un1))->unca == 0x7f)
#endif
            printf("***-06*** O     K ***\n");
        else
            printf("***-06**** N   G **** : %llx\n",
        ((union tag2 *)((char *)un1))->unca);
    }
    else
        printf("***-06**** N   G ****\n");

    if(sizeof((short int)cb) == 2)
    {
        if((short int)cb  == -128)
            printf("***-07*** O     K ***\n");
        else
            printf("***-07**** N   G ****\n");
    }
    else
        printf("***-07**** N   G ****\n");

    if(sizeof((short int)llia)  == 2)
    {
            printf("***-08*** O     K ***\n"); 
    }
    else
        printf("***-08**** N   G ****\n");

    uia = (unsigned int)&uib; 
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof((short int *)uia) == 8)
#else
    if(sizeof((short int *)uia) == 4)
#endif 
    {
#if LONG64 || __x86_64__ || __aarch64__
            printf("***-09*** O     K ***\n");
#else
#if INT64
        if(*((short int *)uia) == 0)
#else
        if(*((short int *)uia) == 0xffffffff)
#endif
            printf("***-09*** O     K ***\n");
        else
            printf("***-09**** N   G **** : %llx\n",
			*((short int *)uia));
#endif
    }
    else
        printf("***-09**** N   G ****\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof((long int)llia) == 8)
#else
    if(sizeof((long int)llia) == 4)
#endif
    {
        if((long int)llia == 2147483647)
            printf("***-10*** O     K ***\n");
        else
            printf("***-10**** N   G ****\n");
    }
    else
        printf("***-10**** N   G ****\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof((long int)lda) == 8)
#else
    if(sizeof((long int)lda) == 4)
#endif
    {
        if((long int)lda == 256)
            printf("***-11*** O     K ***\n");
        else
            printf("***-11**** N   G ****\n");
    }
    else
        printf("***-11**** N   G ****\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof((long int)st1) == 8)
#else
    if(sizeof((long int)st1) == 4)
#endif
    {
        if(((struct tag1 *)((long int)st1))->stia == 2147483647)
            printf("***-12*** O     K ***\n");
        else
            printf("***-12**** N   G ****\n");
    }
    else
        printf("***-12**** N   G ****\n");

    pca = &pcb;
    if(sizeof((long long int)pca) == 8)
    {
        if(*((char *)(long long int)pca) == 100)
            printf("***-13*** O     K ***\n");
        else
            printf("***-13**** N   G1****\n");
    }
    else
        printf("***-13**** N   G2****\n");

  if(sizeof((long long int)ssia) == 8)
    {
        if(((long long int)ssia) == 32767)
            printf("***-14*** O     K ***\n");
        else
            printf("***-14**** N   G1****\n");
    }
    else
        printf("***-14**** N   G2****\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof((long long int *)arr) == 8)
#else
    if(sizeof((long long int *)arr) == 4)
#endif
    {
        if(*((int *)((long long int *)arr)) == 0)
            printf("***-15*** O     K ***\n");
        else
            printf("***-15**** N   G ****\n");
    }
    else
        printf("***-15**** N   G ****\n");

    if(sizeof((float)ia) == 4)
    {
        if(((float)ia - 0.2147483647e+10) >= -1e+4 &&
           ((float)ia - 0.2147483647e+10) <=  1e+4)
            printf("***-16*** O     K ***\n");
        else
            printf("***-16**** N   G2****\n");
    }
    else
        printf("***-16**** N   G1****\n");

    if(sizeof((float)lda) == 4)
    {
        if((float)lda == 256.125)
            printf("***-17*** O     K ***\n");
        else
            printf("***-17**** N   G ****\n");
    }
    else
        printf("***-17**** N   G ****\n");

    if(sizeof((volatile float)++ib) == 4)
    {
        if(((volatile float)++ib) == 2)
            printf("***-18*** O     K ***\n");
        else
            printf("***-18**** N   G ****\n");
    }
    else
        printf("***-18**** N   G ****\n");

    if(sizeof((double)sia) == 8)
    {
        if(((double)sia) == 32767)
            printf("***-19*** O     K ***\n");
        else
            printf("***-19**** N   G1****\n");
    }
    else
        printf("***-19**** N   G2****\n");

    cc = &cd;
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof((volatile double *)cc) == 8)
#else
    if(sizeof((volatile double *)cc) == 4)
#endif
    {
        if(*((char *)((volatile double *)cc)) == -1)
            printf("***-20*** O     K ***\n");
        else
            printf("***-20**** N   G ****\n");
    }
    else
        printf("***-20**** N   G ****\n");

#if __NO_LONGDOUBLE
    if(sizeof((long double)ca) == 8)
    {
        if(((long double)ca - 127) >= -1e-6 &&
           ((long double)ca - 127) <=  1e-6)
            printf("***-21*** O     K ***\n");
        else
            printf("***-21**** N   G ****\n");
    }
    else
        printf("***-21**** N   G ****\n");
#else
#if __R12 || __i386
    if(sizeof((long double)ca) == 12)
#else
    if(sizeof((long double)ca) == 16)
#endif
    {
        if(((long double)ca - 127) >= -1e-6 &&
           ((long double)ca - 127) <=  1e-6)
            printf("***-21*** O     K ***\n");
        else
            printf("***-21**** N   G ****\n");
    }
    else
        printf("***-21**** N   G ****\n");
#endif

    func2 = func1;
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof((volatile long double *)func2()) == 8)
#else
    if(sizeof((volatile long double *)func2()) == 4)
#endif
    {
        if((int)((volatile long double *)func2()) == 2147483647)
            printf("***-22*** O     K ***\n");
        else
            printf("***-22**** N   G ****\n");
    }
    else
        printf("***-22**** N   G ****\n");

#if INT64
    if(sizeof((signed int)uib) == 8)
#else
    if(sizeof((signed int)uib) == 4)
#endif
    {
#if INT64
        if((signed int)uib == 0xffffffff)
#else
        if((signed int)uib == -1)
#endif
            printf("***-23*** O     K ***\n");
        else
            printf("***-23**** N   G **** : %llx\n",uib);
    }
    else
        printf("***-23**** N   G ****\n");

    pda = &dbla;
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof((signed short int *)pda) == 8)
#else
    if(sizeof((signed short int *)pda) == 4)
#endif
    {
        if(*((double *)(signed short int *)pda) == 256)
            printf("***-24*** O     K ***\n");
        else
            printf("***-24**** N   G ****\n");
    }
    else
        printf("***-24**** N   G ****\n");

    if(sizeof((unsigned char)sca) == 1)
    {
        if((unsigned char)sca == 255)
            printf("***-26*** O     K ***\n");
        else
            printf("***-26**** N   G ****\n");
    }
    else
        printf("***-26**** N   G ****\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof((unsigned long int)st1) == 8)
#else
    if(sizeof((unsigned long int)st1) == 4)
#endif
    {
      if(((struct tag1 *)((unsigned long int)st1))->stia == 2147483647)
            printf("***-27*** O     K ***\n");
        else
            printf("***-27**** N   G ****\n");
    }
    else
        printf("***-27**** N   G ****\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof((unsigned long long int *)arr) == 8)
#else
    if(sizeof((unsigned long long int *)arr) == 4)
#endif
    {
        if(*((int *)((unsigned long long int *)arr)) == 0)
            printf("***-28*** O     K ***\n");
        else
            printf("***-28**** N   G ****\n");
    }
    else
        printf("***-28**** N   G ****\n");

    (void)st1;
        printf("***-29*** O     K ***\n");

    vp = (void *)a;
    if(vp == (void *)1)
        printf("***-30*** O     K ***\n");
    else
        printf("***-30**** N   G ****\n");

    vp = (void *)un1;
    if(vp == (void *)&run)
        printf("***-31*** O     K ***\n");
    else
        printf("***-31**** N   G ****\n");

    stxp = &stx;
    lp = (long double *)stxp;
    if(sizeof(((struct tag3 *)lp)->a) == 1)
    {
        if((((struct tag3 *)lp)->a) == 1)
            printf("***-32*** O     K ***\n");
        else
            printf("***-32**** N   G ****\n");
    }
    else
        printf("***-32**** N   G ****\n");

    ap[0] = &c1;
    ap[1] = &c2;
    ap[2] = &c3;
    ap[3] = &c4;
#if INT64
    if(sizeof((struct tag4 *)ap)->a == 8)
#else
    if(sizeof((struct tag4 *)ap)->a == 4)
#endif
    {
#if LONG64 || __x86_64__
        if((((struct tag4 *)ap)->a)== (&c1))
#else
        if(((struct tag4 *)ap)->a == (int)&c1)
#endif
            printf("***-33*** O     K ***\n");
        else
            printf("***-33**** N   G ****:%llx\n",((struct tag4 *)ap)->a);
    }
    else
        printf("***-33**** N   G ****\n");

#if INT64
    if(sizeof((volatile)clli) == 8)
#else
    if(sizeof((volatile int )clli) == 4)
#endif
    {
        if((volatile int )clli == 5)
            printf("***-35*** O     K ***\n");
        else
            printf("***-35**** N   G ****\n");
    }
    else
        printf("***-35**** N   G ****\n");

#if INT64
    if(sizeof((const)vsia) == 8)
#else
    if(sizeof((const int )vsia) == 4)
#endif
    {
        if((const int )vsia == 4)
            printf("***-36*** O     K ***\n");
        else
            printf("***-36**** N   G ****\n");
    }
    else
        printf("***-36**** N   G ****\n");

    fb = &fc;
    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}

int  func1()
{
     return(2147483647);
}
