#include <stdio.h>

struct tag1 {
               int   stia;
               char  stca;
               float stfa;
            };
int main()
{
    int            intfunc1();
    char           charfun1();
    short int      sintfun1();
    long int       lintfun1();
    long long int  llintfu1();
    float          fltfunc1();
    double         dblfunc1();
    long double    ldblfun1();

    int                    inta;
    char                   chara;
    short int              sinta;
    long int               linta;
    long long int          llinta;
    float                  flta;
    double                 dbla;
    long double            ldbla;
    signed char            schara;
    signed int             sintb;
    signed short int       ssinta;
    signed long int        slinta;
    signed long long int   sllinta;
    unsigned char          uchara;
    unsigned int           uinta;
    unsigned short int     usinta;
    unsigned long int      ulinta;
    unsigned long long int ullinta;
    int                    *p;
    int                    a=5;

    int                    ri;
    char                   rc;
    short int              rsi;
    long int               rli;
    long long int          rlli;
    float                  rflt;
    double                 rdbl;
    long double            rldbl;

    struct tag1 st1;

    inta     = 2147483647;
    chara    = -1;
    sinta    = 32767;
    linta    = -2147483648;
    llinta   = 9223372036854775807LL;
    flta     = 12.8e+1;
    dbla     = 2.56e+2;
    ldbla    = 512000e-3;
    schara   = -127;
    sintb    = -2147483648;
    ssinta   = -32768;
    slinta   = 2147483647;
    sllinta  = -9223372036854775808LL;
    uchara   = 255;
    uinta    = 4294967295;
    usinta   = 65535;
    ulinta   = 4294967295;
    ullinta  = 18446744073709551615LL;
    p        = &a;
    st1.stia = 100;
    st1.stca =  50;
    st1.stfa = 300.0;

    printf("*** TEST FOR EXPRESSION ***STARTED\n");

    ri = intfunc1(inta,chara,sinta);
    if(ri == 2147483647)
        printf("-TEST01-4*** RETURN CORD OK ***\n");
    else
        printf("-TEST01-4*** RETURN CORD NG ***\n");

    rc = charfun1(linta,llinta,flta);
#ifdef S_CHAR
    if(rc == -1)
#else
    if(rc == 255)
#endif
        printf("-TEST02-4*** RETURN CORD OK ***\n");
    else
        printf("-TEST02-4*** RETURN CORD NG ***\n");

    rsi = sintfun1(dbla,ldbla,schara);
    if(rsi == 32767)
        printf("-TEST03-4*** RETURN CORD OK ***\n");
    else
        printf("-TEST03-4*** RETURN CORD NG ***\n");

    rli = lintfun1(sintb,ssinta,slinta);
    if(rli == -2147483648)
        printf("-TEST04-4*** RETURN CORD OK ***\n");
    else
        printf("-TEST04-4*** RETURN CORD NG ***\n");

    rlli = llintfu1(sllinta,uchara,uinta);
    if(rlli == 9223372036854775807LL)
        printf("-TEST05-4*** RETURN CORD OK ***\n");
    else
        printf("-TEST05-4*** RETURN CORD NG ***\n");

    rflt = fltfunc1(usinta,ulinta,ullinta);
    if(rflt == 128)
        printf("-TEST06-4*** RETURN CORD OK ***\n");
    else
        printf("-TEST06-4*** RETURN CORD NG ***\n");

    rdbl = dblfunc1(p);
    if(rdbl == 256)
        printf("-TEST07-2*** RETURN CORD OK ***\n");
    else
        printf("-TEST07-2*** RETURN CORD NG ***\n");

    rldbl = ldblfun1(st1);
    if(rldbl == 512)
        printf("-TEST08-4*** RETURN CORD OK ***\n");
    else
        printf("-TEST08-4*** RETURN CORD NG ***\n");

    printf("*** TEST FOR EXPRESSION ***ENDED\n");

}


int intfunc1(intb,charb,sintb)
int       intb;
char      charb;
short int sintb;
{
    if(intb == 2147483647)
        printf("-TEST01-1*** O     K ***\n");
    else
        printf("-TEST01-1*** N     G ***\n");

#ifdef S_CHAR
    if(charb == -1)
#else
    if(charb == 255)
#endif
        printf("-TEST01-2*** O     K ***\n");
    else
        printf("-TEST01-2*** N     G ***\n");

    if(sintb == 32767)
        printf("-TEST01-3*** O     K ***\n");
    else
        printf("-TEST01-3*** N     G ***\n");

    return (2147483647);
}


char charfun1(lintb,llintb,fltb)
long int       lintb;
long long int  llintb;
float          fltb;
{
    if(lintb == -2147483648)
        printf("-TEST02-1*** O     K ***\n");
    else
        printf("-TEST02-1*** N     G ***\n");

    if(llintb== 9223372036854775807LL)
        printf("-TEST02-2*** O     K ***\n");
    else
        printf("-TEST02-2*** N     G ***\n");

    if(fltb == 128)
        printf("-TEST02-3*** O     K ***\n");
    else
        printf("-TEST02-3*** N     G ***\n");

    return ((char)-1);
}


short int sintfun1(dblb,ldblb,scharb)
double         dblb;
long double    ldblb;
signed char    scharb;
{
    if(dblb == 256)
        printf("-TEST03-1*** O     K ***\n");
    else
        printf("-TEST03-1*** N     G ***\n");

    if(ldblb== 512)
        printf("-TEST03-2*** O     K ***\n");
    else
        printf("-TEST03-2*** N     G ***\n");

    if(scharb == -127)
        printf("-TEST03-3*** O     K ***\n");
    else
        printf("-TEST03-3*** N     G ***\n");

    return (32767);
}


long int lintfun1(sintb,ssintb,slintb)
signed int       sintb;
signed short int ssintb;
signed long int  slintb;
{
    if(sintb == -2147483648)
        printf("-TEST04-1*** O     K ***\n");
    else
        printf("-TEST04-1*** N     G ***\n");

    if(ssintb == -32768)
        printf("-TEST04-2*** O     K ***\n");
    else
        printf("-TEST04-2*** N     G ***\n");

    if(slintb == 2147483647)
        printf("-TEST04-3*** O     K ***\n");
    else
        printf("-TEST04-3*** N     G ***\n");

    return (-2147483648);
}


long long int llintfu1(sllintb,ucharb,uintb)
signed long long int sllintb;
unsigned char        ucharb;
unsigned int         uintb;
{
    if(sllintb == -9223372036854775808LL)
        printf("-TEST05-1*** O     K ***\n");
    else
        printf("-TEST05-1*** N     G ***\n");

    if(ucharb == 255)
        printf("-TEST05-2*** O     K ***\n");
    else
        printf("-TEST05-2*** N     G ***\n");

    if(uintb == 4294967295)
        printf("-TEST05-3*** O     K ***\n");
    else
        printf("-TEST05-3*** N     G ***\n");

    return (9223372036854775807LL);
}



float fltfunc1(usintb,ulintb,ullintb)
unsigned short int     usintb;
unsigned long int      ulintb;
unsigned long long int ullintb;
{
    if(usintb == 65535)
        printf("-TEST06-1*** O     K ***\n");
    else
        printf("-TEST06-1*** N     G ***\n");

    if(ulintb == 4294967295)
        printf("-TEST06-2*** O     K ***\n");
    else
        printf("-TEST06-2*** N     G ***\n");

    if(ullintb == 18446744073709551615LL)
        printf("-TEST06-3*** O     K ***\n");
    else
        printf("-TEST06-3*** N     G ***\n");

    return (0.128e+3);
}


double dblfunc1(pb)
int *pb;
{
    int pc;
    pc = *pb;
    if (pc == 5)
        printf("-TEST07-1*** O     K ***\n");
    else
        printf("-TEST07-1*** N     G ***\n");

    return (0.256e+3);
}


long double ldblfun1(st2)
struct tag1 st2;
{
    if(st2.stia == 100)
        printf("-TEST08-1*** O     K ***\n");
    else
        printf("-TEST08-1*** N     G ***\n");

    if(st2.stca ==  50)
        printf("-TEST08-2*** O     K ***\n");
    else
        printf("-TEST08-2*** N     G ***\n");

    if(st2.stfa == 300.0)
        printf("-TEST08-3*** O     K ***\n");
    else
        printf("-TEST08-3*** N     G ***\n");

    return (0.512e+3);
}
