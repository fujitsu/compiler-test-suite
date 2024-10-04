#include <stdio.h>

#if defined(i386)
#define LITTLE_ENDIAN 1
#endif

struct tag1 {
              char   stca;
              int    stia;
              double stda;
            };

union  tag2 {
              char      unca;
              short int unsia;
              int       unia;
            };
int main()
{
    void  vofunc1();
    void  vofunc2();
    void  vofunc3();

    char                      ca;
    signed int                sia;
    long double               lda;
    short int                 sib;
    signed long long int      sllia;
    int                       ia;
    int                       *pa;
    int                       rpa;

    struct tag1 st1;
    union  tag2 un2;

    ca    = 255;
    sia   = 2147483647;
    lda   = 0.128e+3;
    sib   = 32767;
    sllia = 9223372036854775807LL;
    ia    = 0;
    rpa   = 2147483647;
    pa    = &rpa;

    st1.stca = 255;
    st1.stia = -2147483648;
    st1.stda = 256000e-3;

    un2.unca  = 0;
    un2.unsia = 0;
    un2.unia  = 2147483647;


    printf("*** TEST FOR TOKEN ***STARTED\n");

    vofunc1(ca,sia,st1);
    vofunc2(un2,lda,pa);
    vofunc3(ia = ia | 2147483647,sib,sllia);

    printf("*** TEST FOR TOKEN ***ENDED\n");
}


void vofunc1(cab,siab,st1b)
char         cab;
signed int   siab;
struct tag1 st1b;
{

#if defined(S_CHAR) || defined(__GNUC__)
    if(cab == -1)
#else
    if(cab == 255)
#endif
        printf("*** -01-1 *** O     K ***\n");
    else
        printf("*** -01-1 *** N     G ***\n");

    if(siab == 2147483647)
        printf("*** -01-2 *** O     K ***\n");
    else
        printf("*** -01-2 *** N     G ***\n");

#if defined(S_CHAR) || defined(__GNUC__)
    if(st1b.stca == -1)
#else
    if(st1b.stca == 255)
#endif
        printf("*** -01-3 *** O     K ***\n");
    else
        printf("*** -01-3 *** N     G ***\n");

    if(st1b.stia == -2147483648)
        printf("*** -01-4 *** O     K ***\n");
    else
        printf("*** -01-4 *** N     G ***\n");

    if(st1b.stda == 256)
        printf("*** -01-5 *** O     K ***\n");
    else
        printf("*** -01-5 *** N     G ***\n");

    return;
}


void vofunc2(un2b,ldab,pab)
union tag2   un2b;
long double  ldab;
int          *pab;
{
#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if(un2b.unca == -1)
#else
    if(un2b.unca == 127)
#endif
        printf("*** -02-1 *** O     K ***\n");
    else
        printf("*** -02-1 *** N     G ***\n");

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if(un2b.unsia == -1)
#else
    if(un2b.unsia == 32767)
#endif
        printf("*** -02-2 *** O     K ***\n");
    else
        printf("*** -02-2 *** N     G ***\n");

    if(un2b.unia == 2147483647)
        printf("*** -02-3 *** O     K ***\n");
    else
        printf("*** -02-3 *** N     G ***\n");

    if(ldab == 128)
        printf("*** -02-4 *** O     K ***\n");
    else
        printf("*** -02-4 *** N     G ***\n");

    if(*pab == 2147483647)
        printf("*** -02-5 *** O     K ***\n");
    else
        printf("*** -02-5 *** N     G ***\n");

}


void vofunc3(iab,sibb,slliab)
int                  iab;
short int            sibb;
signed long long int slliab;
{
    if(iab == 2147483647)
        printf("*** -03-1 *** O     K ***\n");
    else
        printf("*** -03-1 *** N     G ***\n");

    if(sibb == 32767)
        printf("*** -03-2 *** O     K ***\n");
    else
        printf("*** -03-2 *** N     G ***\n");

    if(slliab == 9223372036854775807LL)
        printf("*** -03-3 *** O     K ***\n");
    else
        printf("*** -03-3 *** N     G ***\n");

    return;
}
