#include <stdio.h>

#if defined(i386)
#define LITTLE_ENDIAN 1
#endif

struct tag1 {
              char      stchara;
              int       stinta;
              double    stdbla;
            };

union tag2  {
              char      unchara;
              short int unsinta;
              int       uninta;
            };

struct tag3 {
              short int stsia;
              long  int stlia;
              float     stfla;
            };

struct tag4 {
              unsigned int       stuia;
              unsigned char      stuca;
              unsigned short int stusia;
            };
int main()
{
    struct tag1 st1;
    union  tag2 un1;
    double               dbla;
    signed short int     ssia;
    unsigned long int    ulia;
    int                  *p;
    long long int        llia;
    signed long long int sllia;
    int                  ia;
    int                  ib;

    struct tag1 st2();
    struct tag3 st3();
    struct tag4 st4();

    struct tag1 rst2;
    struct tag3 rst3;
    struct tag4 rst4;

    st1.stchara = 127;
    st1.stinta  = 2147483647;
    st1.stdbla  = 1.28e+2;
    un1.unchara = 0;
    un1.unsinta = 0;
    un1.uninta  = 2147483647;
    dbla        = 0.512e+3;
    ssia        = 127;
    ulia        = 4294967295;
    ia          = 2147483647;
    p           = &ia;
    llia        = 2147483647;
    sllia       = 9223372036854775807LL;
    ib          = 0;

    printf("*** TEST FOR EXPRESSION ***STARTED\n");

    rst2 = st2(dbla,ssia,ulia);
    if(rst2.stchara == 127)
        printf("***-01-4*** O     K ***\n");
    else
        printf("***-01-4*** N     G ***\n");

    if(rst2.stinta == 256)
        printf("***-01-5*** O     K ***\n");
    else
        printf("***-01-5*** N     G ***\n");

    if(rst2.stdbla == 512)
        printf("***-01-6*** O     K ***\n");
    else
        printf("***-01-6*** N     G ***\n");


    rst3 = st3(st1,un1,p);
    if(rst3.stsia == 32767)
        printf("***-02-8*** O     K ***\n");
    else
        printf("***-02-8*** N     G ***\n");

    if(rst3.stlia == 2147483647)
        printf("***-02-9*** O     K ***\n");
    else
        printf("***-02-9*** N     G ***\n");

    if(rst3.stfla == 1.024e+3)
        printf("***-02-10*** O     K ***\n");
    else
        printf("***-02-10*** N     G ***\n");

    rst4 = st4(llia,sllia,ib=ib | 128);
    if(rst4.stuia == 4294967295)
        printf("***-01-4*** O     K ***\n");
    else
        printf("***-01-4*** N     G ***\n");

    if(rst4.stuca == 255)
        printf("***-01-5*** O     K ***\n");
    else
        printf("***-01-5*** N     G ***\n");

    if(rst4.stusia == 65535)
        printf("***-01-6*** O     K ***\n");
    else
        printf("***-01-6*** N     G ***\n");

    printf("*** TEST FOR EXPRESSION ***ENDED\n");
}

struct tag1 st2(dblb,ssib,ulib)
double            dblb;
signed short int  ssib;
unsigned long int ulib;
{
    struct tag1 st5;

    if(dblb == 0.512e+3)
        printf("***-01-1*** O     K ***\n");
    else
        printf("***-01-1*** N     G ***\n");

    if(ssib == 127)
        printf("***-01-2*** O     K ***\n");
    else
        printf("***-01-2*** N     G ***\n");

    if(ulib == 4294967295)
        printf("***-01-3*** O     K ***\n");
    else
        printf("***-01-3*** N     G ***\n");

    st5.stchara = 127;
    st5.stinta  = 256;
    st5.stdbla  = 512;

    return (st5);
}


struct tag3 st3(st1b,un1b,pb)
struct tag1 st1b;
union  tag2 un1b;
int         *pb;
{
    struct tag3 st6;

    if(st1b.stchara == 127)
        printf("***-02-1*** O     K ***\n");
    else
        printf("***-02-1*** N     G ***\n");

    if(st1b.stinta == 2147483647)
        printf("***-02-2*** O     K ***\n");
    else
        printf("***-02-2*** N     G ***\n");

    if(st1b.stdbla == 1.28e+2)
        printf("***-02-3*** O     K ***\n");
    else
        printf("***-02-3*** N     G ***\n");

#if LITTLE_ENDIAN ||__x86_64__ || __aarch64__
    if(un1b.unchara == -1)
#else
    if(un1b.unchara == 127)
#endif
        printf("***-02-4*** O     K ***\n");
    else
        printf("***-02-4*** N     G ***\n");

#if LITTLE_ENDIAN ||__x86_64__ || __aarch64__
    if(un1b.unsinta == -1)
#else
    if(un1b.unsinta == 32767)
#endif
        printf("***-02-5*** O     K ***\n");
    else
        printf("***-02-5*** N     G ***\n");

    if(un1b.uninta == 2147483647)
        printf("***-02-6*** O     K ***\n");
    else
        printf("***-02-6*** N     G ***\n");

    if(*pb == 2147483647)
        printf("***-02-7*** O     K ***\n");
    else
        printf("***-02-7*** N     G ***\n");

    st6.stsia   = 32767;
    st6.stlia   = 2147483647;
    st6.stfla   = 1.024e+3;

    return (st6);
}


struct tag4 st4(llib,sllib,ibb)
long long int              llib;
signed long long int sllib;
int                        ibb;
{
    struct tag4 st7;

    if(llib == 2147483647)
        printf("***-03-1*** O     K ***\n");
    else
        printf("***-03-1*** N     G ***\n");

    if(sllib == 9223372036854775807LL)
        printf("***-03-2*** O     K ***\n");
    else
        printf("***-03-2*** N     G ***\n");

    if(ibb == 128)
        printf("***-03-3*** O     K ***\n");
    else
        printf("***-03-3*** N     G ***\n");

    st7.stuia   = 4294967295;
    st7.stuca   = 255;
    st7.stusia  = 65535;

    return (st7);
}
