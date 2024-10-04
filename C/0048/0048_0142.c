#include <stdio.h>

#if defined(i386)
#define LITTLE_ENDIAN 1
#endif

union tag1 {
             char        unca;
             short int   unsia;
             int         unia;
           };

union tag2 {
             float       unfa;
             double      undba;
             long double unldba;
           };

union tag3 {
             int         unia;
             short int   unsia;
             char        unca;
           };
int main()
{
    union tag1 un1();
    union tag2 un2();
    union tag3 un3();

    union tag1 run1;
    union tag2 run2;
    union tag3 run3;

    unsigned char         uc;
    signed long int       sli;
    long double           ld;
    int                   ia;
    float                 fa;
    int                   *pa;
    int                   pb;
    signed short int      ssi;
    long long int         lli;
    union tag1 un4;

    un4.unca  = 0;
    un4.unsia = 0;
    un4.unia  = 2147483647;

    uc   = 255;
    sli  = 2147483647;
    ld   = 0.128e+3;
    ia   = 0;
    fa   = 25600.0e-2;
    pb   = 2147483647;
    pa   = &pb;
    ssi  = 32767;
    lli  = 9223372036854775807LL;

    printf("*** TEST FOR EXPRESSION ***STARTED\n");

    run1 = un1(uc,sli,ld);
#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if(run1.unca == -1)
#else
    if(run1.unca == 127)
#endif
        printf("***-01-4*** O     K ***\n");
    else
        printf("***-01-4*** N     G ***\n");

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if(run1.unsia == -1)
#else
    if(run1.unsia == 32767)
#endif
        printf("***-01-5*** O     K ***\n");
    else
        printf("***-01-5*** N     G ***\n");

    if(run1.unia == 2147483647)
        printf("***-01-6*** O     K ***\n");
    else
        printf("***-01-6*** N     G ***\n");

    run2 = un2(ia = ia & 2147483647,fa,pa);
        printf("***-02-4*** O     K ***\n");
        printf("***-02-5*** O     K ***\n");
    if(run2.unldba == 2147483392)
        printf("***-02-6*** O     K ***\n");
    else
        printf("***-02-6*** N     G ***\n");

    run3 = un3(ssi,lli,un4);
#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if(run3.unia == 0xff)
#else
    if(run3.unia == 0xff000000)
#endif
        printf("***-03-6*** O     K ***\n");
    else
        printf("***-03-6*** N     G ***\n");

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if(run3.unsia == 0xff)
#else
    if(run3.unsia == 0xffffff00)
#endif
        printf("***-03-7*** O     K ***\n");
    else
        printf("***-03-7*** N     G ***\nrun3.unsia:%x\n",run3.unsia);

#if defined(S_CHAR) || defined(__GNUC__)
    if(run3.unca == 0xffffffff)
#else
    if(run3.unca == 0xff)
#endif
        printf("***-03-8*** O     K ***\n");
    else
        printf("***-03-8*** N     G ***\n");

    printf("*** TEST FOR EXPRESSION ***ENDED\n");

}


union tag1 un1(uca,slia,ld)
unsigned char    uca;
signed long int  slia;
long double      ld;
{
    union tag1 un5;

    if(uca == 255)
        printf("***-01-1*** O     K ***\n");
    else
        printf("***-01-1*** N     G ***\n");

    if(slia == 2147483647)
        printf("***-01-2*** O     K ***\n");
    else
        printf("***-01-2*** N     G ***\n");

    if(ld == 0.128e+3)
        printf("***-01-3*** O     K ***\n");
    else
        printf("***-01-3*** N     G ***\n");

    un5.unca  = 0;
    un5.unsia = 0;
    un5.unia  = 2147483647;

    return (un5);
}


union tag2 un2(iab,fab,pab)
int              iab;
float            fab;
int              *pab;
{
    union tag2 un6;

    if(iab == 0)
        printf("***-02-1*** O     K ***\n");
    else
        printf("***-02-1*** N     G ***\n");

    if(fab == 25600.0e-2)
        printf("***-02-2*** O     K ***\n");
    else
        printf("***-02-2*** N     G ***\n");

    if(*pab == 2147483647)
        printf("***-02-3*** O     K ***\n");
    else
        printf("***-02-3*** N     G ***\n");

    un6.unfa   = 0;
    un6.undba  = 0;
    un6.unldba = 2147483392;

    return (un6);
}


union tag3 un3(ssib,llib,un4b)
signed short int ssib;
long long int    llib;
union tag1       un4b;
{
    union tag3 un7;

    if(ssib == 32767)
        printf("***-03-1*** O     K ***\n");
    else
        printf("***-03-1*** N     G ***\n");

    if(llib == 9223372036854775807LL)
        printf("***-03-2*** O     K ***\n");
    else
        printf("***-03-2*** N     G ***\n");

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if(un4b.unca == -1)
#else
    if(un4b.unca == 127)
#endif
        printf("***-03-3*** O     K ***\n");
    else
        printf("***-03-3*** N     G ***\n");

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if(un4b.unsia == -1)
#else
    if(un4b.unsia == 32767)
#endif
        printf("***-03-4*** O     K ***\n");
    else
        printf("***-03-4*** N     G ***\n");

    if(un4b.unia == 2147483647)
        printf("***-03-5*** O     K ***\n");
    else
        printf("***-03-5*** N     G ***\n");

    un7.unia   = 0;
    un7.unsia  = 0;
    un7.unca   = (char)2147483647;

    return (un7);
}
