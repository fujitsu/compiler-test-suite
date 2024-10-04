#include <stdio.h>
int main()
{
    char                   ca;
    int                    ia=9;
    short int              sia;
    long int               lia;
    long long int          llia;

    float                  fa;
    double                 da;
    long double            lda;

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

    char                   *p;

    struct tag1 {
                  int       stia;
                  char      stca;
                  int       stib;
                  char      stcb;
                  char      stcc;
                  short int stsia;
                }st1;

    union  tag2 {
                  char      unca;
                  int       unia;
                  short int unsia;
                }un1;

    enum   tag3 { ena,enb,enc,end };

    struct tag4{int a; char b; short int c; };

    int    arr[10];

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(sizeof(char) == 1)
        printf("***-01-1*** O     K ***\n");
    else
        printf("***-01-1**** N   G ****\n");

    if(sizeof(ca) == 1)
        printf("***-01-2*** O     K ***\n");
    else
        printf("***-01-2**** N   G ****\n");

#if INT64
    if(sizeof(int) == 8)
#else
    if(sizeof(int) == 4)
#endif
        printf("***-02-1*** O     K ***\n");
    else
        printf("***-02-1**** N   G ****\n");

#if INT64
    if(sizeof(ia) == 8)
#else
    if(sizeof(ia) == 4)
#endif
        printf("***-02-2*** O     K ***\n");
    else
        printf("***-02-2**** N   G ****\n");

    if(sizeof(short int) == 2)
        printf("***-03-1*** O     K ***\n");
    else
        printf("***-03-1**** N   G ****\n");

    if(sizeof(sia) == 2)
        printf("***-03-2*** O     K ***\n");
    else
        printf("***-03-2**** N   G ****\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof(long  int) == 8)
#else
    if(sizeof(long  int) == 4)
#endif
        printf("***-04-1*** O     K ***\n");
    else
        printf("***-04-1**** N   G ****\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof(lia) == 8)
#else
    if(sizeof(lia) == 4)
#endif
        printf("***-04-2*** O     K ***\n");
    else
        printf("***-04-2**** N   G ****\n");

#ifndef _NO_LONGLONG
    if(sizeof(long long int) == 8)
        printf("***-05-1*** O     K ***\n");
    else
        printf("***-05-1**** N   G ****\n");

    if(sizeof(llia) == 8)
        printf("***-05-2*** O     K ***\n");
    else
        printf("***-05-2**** N   G ****\n");
#endif

    if(sizeof(float) == 4)
        printf("***-06-1*** O     K ***\n");
    else
        printf("***-06-1**** N   G ****\n");

    if(sizeof(fa) == 4)
        printf("***-06-2*** O     K ***\n");
    else
        printf("***-06-2**** N   G ****\n");

    if(sizeof(double) == 8)
        printf("***-07-1*** O     K ***\n");
    else
        printf("***-07-1**** N   G ****\n");

    if(sizeof(da) == 8)
        printf("***-07-2*** O     K ***\n");
    else
        printf("***-07-2**** N   G ****\n");

#if __NO_LONGDOUBLE
    if(sizeof(long double) == 8)
#elif __R12 || __i386
    if(sizeof(long double) == 12)
#else
    if(sizeof(long double) == 16)
#endif
        printf("***-08-1*** O     K ***\n");
    else
        printf("***-08-1**** N   G ****\n");

#if __NO_LONGDOUBLE
    if(sizeof(lda) == 8)
#elif __R12 || __i386
    if(sizeof(lda) == 12)
#else
    if(sizeof(lda) == 16)
#endif
        printf("***-08-2*** O     K ***\n");
    else
        printf("***-08-2**** N   G ****\n");

    if(sizeof(signed char) == 1)
        printf("***-09-1*** O     K ***\n");
    else
        printf("***-09-1**** N   G ****\n");

    if(sizeof(scb) == 1)
        printf("***-09-2*** O     K ***\n");
    else
        printf("***-09-2**** N   G ****\n");

#if INT64
    if(sizeof(signed int) == 8)
#else
    if(sizeof(signed int) == 4)
#endif
        printf("***-10-1*** O     K ***\n");
    else
        printf("***-10-1**** N   G ****\n");

#if INT64
    if(sizeof(sib) == 8)
#else
    if(sizeof(sib) == 4)
#endif
        printf("***-10-2*** O     K ***\n");
    else
        printf("***-10-2**** N   G ****\n");

    if(sizeof(signed short int) == 2)
        printf("***-11-1*** O     K ***\n");
    else
        printf("***-11-1**** N   G ****\n");

    if(sizeof(ssib) == 2)
        printf("***-11-2*** O     K ***\n");
    else
        printf("***-11-2**** N   G ****\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof(signed long  int) == 8)
#else
    if(sizeof(signed long  int) == 4)
#endif
        printf("***-12-1*** O     K ***\n");
    else
        printf("***-12-1**** N   G ****\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof(slib) == 8)
#else
    if(sizeof(slib) == 4)
#endif
        printf("***-12-2*** O     K ***\n");
    else
        printf("***-12-2**** N   G ****\n");

#ifndef _NO_LONGLONG
    if(sizeof(signed long long int) == 8)
        printf("***-13-1*** O     K ***\n");
    else
        printf("***-13-1**** N   G ****\n");

    if(sizeof(sllib) == 8)
        printf("***-13-2*** O     K ***\n");
    else
        printf("***-13-2**** N   G ****\n");
#endif

    if(sizeof(unsigned char) == 1)
        printf("***-14-1*** O     K ***\n");
    else
        printf("***-14-1**** N   G ****\n");

    if(sizeof(ucc) == 1)
        printf("***-14-2*** O     K ***\n");
    else
        printf("***-14-2**** N   G ****\n");

#if INT64
    if(sizeof(unsigned int) == 8)
#else
    if(sizeof(unsigned int) == 4)
#endif
        printf("***-15-1*** O     K ***\n");
    else
        printf("***-15-1**** N   G ****\n");

#if INT64
    if(sizeof(uic) == 8)
#else
    if(sizeof(uic) == 4)
#endif
        printf("***-15-2*** O     K ***\n");
    else
        printf("***-15-2**** N   G ****\n");

    if(sizeof(unsigned short int) == 2)
        printf("***-16-1*** O     K ***\n");
    else
        printf("***-16-1**** N   G ****\n");

    if(sizeof(usic) == 2)
        printf("***-16-2*** O     K ***\n");
    else
        printf("***-16-2**** N   G ****\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof(unsigned long  int) == 8)
#else
    if(sizeof(unsigned long  int) == 4)
#endif
        printf("***-17-1*** O     K ***\n");
    else
        printf("***-17-1**** N   G ****\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof(ulic) == 8)
#else
    if(sizeof(ulic) == 4)
#endif
        printf("***-17-2*** O     K ***\n");
    else
        printf("***-17-2**** N   G ****\n");

#ifndef _NO_LONGLONG
    if(sizeof(unsigned long long int) == 8)
        printf("***-18-1*** O     K ***\n");
    else
        printf("***-18-1**** N   G ****\n");

    if(sizeof(ullic) == 8)
        printf("***-18-2*** O     K ***\n");
    else
        printf("***-18-2**** N   G ****\n");
#endif

#if INT64
    if(sizeof(st1) == 32)
#else
    if(sizeof(st1) == 16)
#endif
        printf("***-19-1*** O     K ***\n");
    else
        printf("***-19-1**** N   G ****\n");

#if INT64
    if(sizeof st1  == 32)
#else
    if(sizeof st1  == 16)
#endif
        printf("***-19-2*** O     K ***\n");
    else
        printf("***-19-2**** N   G ****\n");

#if INT64
    if(sizeof(un1) == 8)
#else
    if(sizeof(un1) == 4)
#endif
        printf("***-20-1*** O     K ***\n");
    else
        printf("***-20-1**** N   G ****\n");

#if INT64
    if(sizeof un1  == 8)
#else
    if(sizeof un1  == 4)
#endif
        printf("***-20-2*** O     K ***\n");
    else
        printf("***-20-2**** N   G ****\n");

#if INT64
    if(sizeof(struct tag1) == 32)
#else
    if(sizeof(struct tag1) == 16)
#endif
        printf("***-21-1*** O     K ***\n");
    else
        printf("***-21-1**** N   G ****\n");

#if INT64
    if(sizeof(struct tag4) == 16)
#else
    if(sizeof(struct tag4) == 8)
#endif
        printf("***-22-1*** O     K ***\n");
    else
        printf("***-22-1**** N   G ****\n");

#if INT64
    if(sizeof(arr) == 80)
#else
    if(sizeof(arr) == 40)
#endif
        printf("***-23-1*** O     K ***\n");
    else
        printf("***-23-1**** N   G ****\n");

#if INT64
    if(sizeof arr  == 80)
#else
    if(sizeof arr  == 40)
#endif
        printf("***-23-2*** O     K ***\n");
    else
        printf("***-23-2**** N   G ****\n");

    if(sizeof ca+ia  == 10)
        printf("***-24-1*** O     K ***\n");
    else
        printf("***-24-1**** N   G ****\n");

#if INT64
    if(sizeof    2147483647  == 8)
#else
    if(sizeof    2147483647  == 4)
#endif
        printf("***-25-1*** O     K ***\n");
    else
        printf("***-25-1**** N   G ****\n");

    if(sizeof    1.  == 8)
        printf("***-26-1*** O     K ***\n");
    else
        printf("***-26-1**** N   G ****\n");

    if(sizeof  1.+4  == 12)
        printf("***-26-2*** O     K ***\n");
    else
        printf("***-26-2**** N   G ****\n");

    if(sizeof  1.-4  == 4)
        printf("***-26-3*** O     K ***\n");
    else
        printf("***-26-3**** N   G ****\n");

#if INT64
    if(sizeof  -ca  ==  8)
#else
    if(sizeof  -ca  ==  4)
#endif
        printf("***-27-1*** O     K ***\n");
    else
        printf("***-27-1**** N   G ****\n");

#if INT64
    if(sizeof (+ca) ==  8)
#else
    if(sizeof (+ca) ==  4)
#endif
        printf("***-27-2*** O     K ***\n");
    else
        printf("***-27-2**** N   G ****\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof  &ca  ==  8)
#else
    if(sizeof  &ca  ==  4)
#endif
        printf("***-27-3*** O     K ***\n");
    else
        printf("***-27-3**** N   G ****\n");

#if INT64
    if(sizeof (!ca) ==  8)
#else
    if(sizeof (!ca) ==  4)
#endif
        printf("***-27-4*** O     K ***\n");
    else
        printf("***-27-4**** N   G ****\n");

#if INT64
    if(sizeof ~ca  ==  8)
#else
    if(sizeof ~ca  ==  4)
#endif
        printf("***-27-5*** O     K ***\n");
    else
        printf("***-27-5**** N   G ****\n");

#if INT64
    if(sizeof(ca+ia) == 8)
#else
    if(sizeof(ca+ia) == 4)
#endif
        printf("***-28-1*** O     K ***\n");
    else
        printf("***-28-1**** N   G ****\n");

    if(sizeof(sia=ca+ia) ==  2)
        printf("***-28-2*** O     K ***\n");
    else
        printf("***-28-2**** N   G ****\n");

    if(sizeof(1-1.) ==  8)
        printf("***-29-1*** O     K ***\n");
    else
        printf("***-29-1**** N   G ****\n");

#if INT64
    if(sizeof(arr[5]) ==  8)
#else
    if(sizeof(arr[5]) ==  4)
#endif
        printf("***-30-1*** O     K ***\n");
    else
        printf("***-30-1**** N   G ****\n");

    if(sizeof(*p) ==  1)
        printf("***-31-1*** O     K ***\n");
    else
        printf("***-31-1**** N   G ****\n");

    if(sizeof *p  ==  1)
        printf("***-31-2*** O     K ***\n");
    else
        printf("***-31-2**** N   G ****\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof( p) ==  8)
#else
    if(sizeof( p) ==  4)
#endif
        printf("***-31-3*** O     K ***\n");
    else
        printf("***-31-3**** N   G ****\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(sizeof  p  ==  8)
#else
    if(sizeof  p  ==  4)
#endif
        printf("***-31-4*** O     K ***\n");
    else
        printf("***-31-4**** N   G ****\n");
}
