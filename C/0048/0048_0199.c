#include <stdio.h>
int test13 (void);
int test12 (void);
int test11 (void);
int test10 (void);
int test9 (void);
int test8 (void);
int test7 (void);
int test6 (void);
int test5 (void);
int test4 (void);
int test3 (void);
int test2 (void);
int test1 (void);

int main()
{
    printf("*** TEST FOR EXPRESSION *** STARTED\n");
    test1();
    test2();
    test3();
    test4();
    test5();
    test6();
    test7();
    test8();
    test9();
    test10();
    test11();
    test12();
    test13();
    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}


int test1 (void)
{
    char                   c     = 10;

    char                   ca    = 9;
    int                    ia    = 10;
    short int              sia   = 11;
    long int               lia   = 10.5;
#ifndef nollint
    long long int          llia  = 9.95;
#else
    long int               llia  = 9.95;
#endif
    float                  flta  = 10.00000;
    double                 dbla  = 100000000000000.e-13;
    long double            ldbla = 0.1e+2;
    signed char            sca   = -10;
    unsigned short int     usia  = 1;

    if(c == ca)
        printf("***-01-01**** N   G ****\n");
    else
        printf("***-01-01*** O     K ***\n");

    if(c == ia)
        printf("***-01-02*** O     K ***\n");
    else
        printf("***-01-02**** N   G ****\n");

    if(c == sia)
        printf("***-01-03**** N   G ****\n");
    else
        printf("***-01-03*** O     K ***\n");

    if(c == lia)
        printf("***-01-04*** O     K ***\n");
    else
        printf("***-01-04**** N   G ****\n");

    if(c == llia)
        printf("***-01-05**** N   G ****\n");
    else
        printf("***-01-05*** O     K ***\n");

    if(c == flta)
        printf("***-01-06*** O     K ***\n");
    else
        printf("***-01-06**** N   G ****\n");

    if(c == dbla)
        printf("***-01-07*** O     K ***\n");
    else
        printf("***-01-07**** N   G ****\n");

    if(c == ldbla)
        printf("***-01-08*** O     K ***\n");
    else
        printf("***-01-08**** N   G ****\n");

    if(c == sca)
        printf("***-01-09**** N   G ****\n");
    else
        printf("***-01-09*** O     K ***\n");

    if(c == usia)
        printf("***-01-10**** N   G ****\n");
    else
        printf("***-01-10*** O     K ***\n");

    if(c == 10.00)
        printf("***-01-11*** O     K ***\n");
    else
        printf("***-01-11**** N   G ****\n");

    if(c == 5<<1)
        printf("***-01-12*** O     K ***\n");
    else
        printf("***-01-12**** N   G ****\n");

    return 0;
}


int test2 (void)
{
    int                    i     = 10;

    char                   ca    = 9;
    int                    ia    = 10;
    short int              sia   = 11;
    long int               lia   = 10.5;
#ifndef nollint
    long long int          llia  = 9.95;
#else
    long int               llia  = 9.95;
#endif
    float                  flta  = 10.00000;
    double                 dbla  = 100000000000000.e-13;
    long double            ldbla = 0.1e+2;
    signed char            sca   = -10;
    unsigned short int     usia  = 1;

    if(i == ca)
        printf("***-02-01**** N   G ****\n");
    else
        printf("***-02-01*** O     K ***\n");

    if(i == ia)
        printf("***-02-02*** O     K ***\n");
    else
        printf("***-02-02**** N   G ****\n");

    if(i == sia)
        printf("***-02-03**** N   G ****\n");
    else
        printf("***-02-03*** O     K ***\n");

    if(i == lia)
        printf("***-02-04*** O     K ***\n");
    else
        printf("***-02-04**** N   G ****\n");

    if(i == llia)
        printf("***-02-05**** N   G ****\n");
    else
        printf("***-02-05*** O     K ***\n");

    if(i == flta)
        printf("***-02-06*** O     K ***\n");
    else
        printf("***-02-06**** N   G ****\n");

    if(i == dbla)
        printf("***-02-07*** O     K ***\n");
    else
        printf("***-02-07**** N   G ****\n");

    if(i == ldbla)
        printf("***-02-08*** O     K ***\n");
    else
        printf("***-02-08**** N   G ****\n");

    if(i == sca)
        printf("***-02-09**** N   G ****\n");
    else
        printf("***-02-09*** O     K ***\n");

    if(i == usia)
        printf("***-02-10**** N   G ****\n");
    else
        printf("***-02-10*** O     K ***\n");

    if(i == 10.00)
        printf("***-02-11*** O     K ***\n");
    else
        printf("***-02-11**** N   G ****\n");

    if(i == 5*2)
        printf("***-02-12*** O     K ***\n");
    else
        printf("***-02-12**** N   G ****\n");

    return 0;
}


int test3 (void)
{
    short int              si    = 10;

    char                   ca    = 9;
    int                    ia    = 10;
    short int              sia   = 11;
    long int               lia   = 10.5;
#ifndef nollint
    long long int          llia  = 9.95;
#else
    long int               llia  = 9.95;
#endif
    float                  flta  = 10.00000;
    double                 dbla  = 100000000000000.e-13;
    long double            ldbla = 0.1e+2;
    signed char            sca   = -10;
    unsigned short int     usia  = 1;

    if(si == ca)
        printf("***-03-01**** N   G ****\n");
    else
        printf("***-03-01*** O     K ***\n");

    if(si == ia)
        printf("***-03-02*** O     K ***\n");
    else
        printf("***-03-02**** N   G ****\n");

    if(si == sia)
        printf("***-03-03**** N   G ****\n");
    else
        printf("***-03-03*** O     K ***\n");

    if(si == lia)
        printf("***-03-04*** O     K ***\n");
    else
        printf("***-03-04**** N   G ****\n");

    if(si == llia)
        printf("***-03-05**** N   G ****\n");
    else
        printf("***-03-05*** O     K ***\n");

    if(si == flta)
        printf("***-03-06*** O     K ***\n");
    else
        printf("***-03-06**** N   G ****\n");

    if(si == dbla)
        printf("***-03-07*** O     K ***\n");
    else
        printf("***-03-07**** N   G ****\n");

    if(si == ldbla)
        printf("***-03-08*** O     K ***\n");
    else
        printf("***-03-08**** N   G ****\n");

    if(si == sca)
        printf("***-03-09**** N   G ****\n");
    else
        printf("***-03-09*** O     K ***\n");

    if(si == usia)
        printf("***-03-10**** N   G ****\n");
    else
        printf("***-03-10*** O     K ***\n");

    if(si == 10.00)
        printf("***-03-11*** O     K ***\n");
    else
        printf("***-03-11**** N   G ****\n");

    if(si == 20/2)
        printf("***-03-12*** O     K ***\n");
    else
        printf("***-03-12**** N   G ****\n");

    return 0;
}


int test4 (void)
{
    long int               li    = 10;

    char                   ca    = 9;
    int                    ia    = 10;
    short int              sia   = 11;
    long int               lia   = 10.5;
#ifndef nollint
    long long int          llia  = 9.95;
#else
    long int               llia  = 9.95;
#endif
    float                  flta  = 10.00000;
    double                 dbla  = 100000000000000.e-13;
    long double            ldbla = 0.1e+2;
    signed char            sca   = -10;
    unsigned short int     usia  = 1;

    if(li == ca)
        printf("***-04-01**** N   G ****\n");
    else
        printf("***-04-01*** O     K ***\n");

    if(li == ia)
        printf("***-04-02*** O     K ***\n");
    else
        printf("***-04-02**** N   G ****\n");

    if(li == sia)
        printf("***-04-03**** N   G ****\n");
    else
        printf("***-04-03*** O     K ***\n");

    if(li == lia)
        printf("***-04-04*** O     K ***\n");
    else
        printf("***-04-04**** N   G ****\n");

    if(li == llia)
        printf("***-04-05**** N   G ****\n");
    else
        printf("***-04-05*** O     K ***\n");

    if(li == flta)
        printf("***-04-06*** O     K ***\n");
    else
        printf("***-04-06**** N   G ****\n");

    if(li == dbla)
        printf("***-04-07*** O     K ***\n");
    else
        printf("***-04-07**** N   G ****\n");

    if(li == ldbla)
        printf("***-04-08*** O     K ***\n");
    else
        printf("***-04-08**** N   G ****\n");

    if(li == sca)
        printf("***-04-09**** N   G ****\n");
    else
        printf("***-04-09*** O     K ***\n");

    if(li == usia)
        printf("***-04-10**** N   G ****\n");
    else
        printf("***-04-10*** O     K ***\n");

    if(li == 10.00)
        printf("***-04-11*** O     K ***\n");
    else
        printf("***-04-11**** N   G ****\n");

#if INT64
    if(li == sizeof(int)*sizeof(short int)/2+2)
#else
    if(li == sizeof(int)*sizeof(short int)+2)
#endif
        printf("***-04-12*** O     K ***\n");
    else
        printf("***-04-12**** N   G ****\n");

    return 0;
}


int test5 (void)
{
#ifndef nollint
    long long int          lli   = 10;
#else
    long int               lli   = 10;
#endif

    char                   ca    = 9;
    int                    ia    = 10;
    short int              sia   = 11;
    long int               lia   = 10.5;
#ifndef nollint
    long long int          llia  = 9.95;
#else
    long int               llia  = 9.95;
#endif
    float                  flta  = 10.00000;
    double                 dbla  = 100000000000000.e-13;
    long double            ldbla = 0.1e+2;
    signed char            sca   = -10;
    unsigned short int     usia  = 1;

    if(lli == ca)
        printf("***-05-01**** N   G ****\n");
    else
        printf("***-05-01*** O     K ***\n");

    if(lli == ia)
        printf("***-05-02*** O     K ***\n");
    else
        printf("***-05-02**** N   G ****\n");

    if(lli == sia)
        printf("***-05-03**** N   G ****\n");
    else
        printf("***-05-03*** O     K ***\n");

    if(lli == lia)
        printf("***-05-04*** O     K ***\n");
    else
        printf("***-05-04**** N   G ****\n");

    if(lli == llia)
        printf("***-05-05**** N   G ****\n");
    else
        printf("***-05-05*** O     K ***\n");

    if(lli == flta)
        printf("***-05-06*** O     K ***\n");
    else
        printf("***-05-06**** N   G ****\n");

    if(lli == dbla)
        printf("***-05-07*** O     K ***\n");
    else
        printf("***-05-07**** N   G ****\n");

    if(lli == ldbla)
        printf("***-05-08*** O     K ***\n");
    else
        printf("***-05-08**** N   G ****\n");

    if(lli == sca)
        printf("***-05-09**** N   G ****\n");
    else
        printf("***-05-09*** O     K ***\n");

    if(lli == usia)
        printf("***-05-10**** N   G ****\n");
    else
        printf("***-05-10*** O     K ***\n");

    if(lli == 10.00)
        printf("***-05-11*** O     K ***\n");
    else
        printf("***-05-11**** N   G ****\n");

    if(lli == 20>>1)
        printf("***-05-12*** O     K ***\n");
    else
        printf("***-05-12**** N   G ****\n");

    return 0;
}


int test6 (void)
{
    float                  flt   = 10;

    char                   ca    = 9;
    int                    ia    = 10;
    short int              sia   = 11;
    long int               lia   = 10.5;
#ifndef nollint
    long long int          llia  = 9.95;
#else
    long int               llia  = 9.95;
#endif
    float                  flta  = 10.00000;
    double                 dbla  = 100000000000000.e-13;
    long double            ldbla = 0.1e+2;
    signed char            sca   = -10;
    unsigned short int     usia  = 1;

    if(flt == ca)
        printf("***-06-01**** N   G ****\n");
    else
        printf("***-06-01*** O     K ***\n");

    if(flt == ia)
        printf("***-06-02*** O     K ***\n");
    else
        printf("***-06-02**** N   G ****\n");

    if(flt == sia)
        printf("***-06-03**** N   G ****\n");
    else
        printf("***-06-03*** O     K ***\n");

    if(flt == lia)
        printf("***-06-04*** O     K ***\n");
    else
        printf("***-06-04**** N   G ****\n");

    if(flt == llia)
        printf("***-06-05**** N   G ****\n");
    else
        printf("***-06-05*** O     K ***\n");

    if(flt == flta)
        printf("***-06-06*** O     K ***\n");
    else
        printf("***-06-06**** N   G ****\n");

    if(flt == dbla)
        printf("***-06-07*** O     K ***\n");
    else
        printf("***-06-07**** N   G ****\n");

    if(flt == ldbla)
        printf("***-06-08*** O     K ***\n");
    else
        printf("***-06-08**** N   G ****\n");

    if(flt == sca)
        printf("***-06-09**** N   G ****\n");
    else
        printf("***-06-09*** O     K ***\n");

    if(flt == usia)
        printf("***-06-10**** N   G ****\n");
    else
        printf("***-06-10*** O     K ***\n");

    if(flt == 10.00)
        printf("***-06-11*** O     K ***\n");
    else
        printf("***-06-11**** N   G ****\n");

    if(flt == 1+2+3+4+5+6-7-4)
        printf("***-06-12*** O     K ***\n");
    else
        printf("***-06-12**** N   G ****\n");

    return 0;
}


int test7 (void)
{
    double                 dbl   = 10;

    char                   ca    = 9;
    int                    ia    = 10;
    short int              sia   = 11;
    long int               lia   = 10.5;
#ifndef nollint
    long long int          llia  = 9.95;
#else
    long int               llia  = 9.95;
#endif
    float                  flta  = 10.00000;
    double                 dbla  = 100000000000000.e-13;
    long double            ldbla = 0.1e+2;
    signed char            sca   = -10;
    unsigned short int     usia  = 1;

    if(dbl == ca)
        printf("***-07-01**** N   G ****\n");
    else
        printf("***-07-01*** O     K ***\n");

    if(dbl == ia)
        printf("***-07-02*** O     K ***\n");
    else
        printf("***-07-02**** N   G ****\n");

    if(dbl == sia)
        printf("***-07-03**** N   G ****\n");
    else
        printf("***-07-03*** O     K ***\n");

    if(dbl == lia)
        printf("***-07-04*** O     K ***\n");
    else
        printf("***-07-04**** N   G ****\n");

    if(dbl == llia)
        printf("***-07-05**** N   G ****\n");
    else
        printf("***-07-05*** O     K ***\n");

    if(dbl == flta)
        printf("***-07-06*** O     K ***\n");
    else
        printf("***-07-06**** N   G ****\n");

    if(dbl == dbla)
        printf("***-07-07*** O     K ***\n");
    else
        printf("***-07-07**** N   G ****\n");

    if(dbl == ldbla)
        printf("***-07-08*** O     K ***\n");
    else
        printf("***-07-08**** N   G ****\n");

    if(dbl == sca)
        printf("***-07-09**** N   G ****\n");
    else
        printf("***-07-09*** O     K ***\n");

    if(dbl == usia)
        printf("***-07-10**** N   G ****\n");
    else
        printf("***-07-10*** O     K ***\n");

    if(dbl == 10.00)
        printf("***-07-11*** O     K ***\n");
    else
        printf("***-07-11**** N   G ****\n");

    if(dbl == 10*(1<2))
        printf("***-07-12*** O     K ***\n");
    else
        printf("***-07-12**** N   G ****\n");

    return 0;
}


int test8 (void)
{
    long double            ldbl  = 10;

    char                   ca    = 9;
    int                    ia    = 10;
    short int              sia   = 11;
    long int               lia   = 10.5;
#ifndef nollint
    long long int          llia  = 9.95;
#else
    long int               llia  = 9.95;
#endif
    float                  flta  = 10.00000;
    double                 dbla  = 100000000000000.e-13;
    long double            ldbla = 0.1e+2;
    signed char            sca   = -10;
    unsigned short int     usia  = 1;

    if(ldbl == ca)
        printf("***-08-01**** N   G ****\n");
    else
        printf("***-08-01*** O     K ***\n");

    if(ldbl == ia)
        printf("***-08-02*** O     K ***\n");
    else
        printf("***-08-02**** N   G ****\n");

    if(ldbl == sia)
        printf("***-08-03**** N   G ****\n");
    else
        printf("***-08-03*** O     K ***\n");

    if(ldbl == lia)
        printf("***-08-04*** O     K ***\n");
    else
        printf("***-08-04**** N   G ****\n");

    if(ldbl == llia)
        printf("***-08-05**** N   G ****\n");
    else
        printf("***-08-05*** O     K ***\n");

    if(ldbl == flta)
        printf("***-08-06*** O     K ***\n");
    else
        printf("***-08-06**** N   G ****\n");

    if(ldbl == dbla)
        printf("***-08-07*** O     K ***\n");
    else
        printf("***-08-07**** N   G ****\n");

    if(ldbl == ldbla)
        printf("***-08-08*** O     K ***\n");
    else
        printf("***-08-08**** N   G ****\n");

    if(ldbl == sca)
        printf("***-08-09**** N   G ****\n");
    else
        printf("***-08-09*** O     K ***\n");

    if(ldbl == usia)
        printf("***-08-10**** N   G ****\n");
    else
        printf("***-08-10*** O     K ***\n");

    if(ldbl == 10.00)
        printf("***-08-11*** O     K ***\n");
    else
        printf("***-08-11**** N   G ****\n");

    if(ldbl == 10%11)
        printf("***-08-12*** O     K ***\n");
    else
        printf("***-08-12**** N   G ****\n");

    return 0;
}


int test9 (void)
{
    signed long int        sli   = 10;

    char                   ca    = 9;
    int                    ia    = 10;
    short int              sia   = 11;
    long int               lia   = 10.5;
#ifndef nollint
    long long int          llia  = 9.95;
#else
    long int               llia  = 9.95;
#endif
    float                  flta  = 10.00000;
    double                 dbla  = 100000000000000.e-13;
    long double            ldbla = 0.1e+2;
    signed char            sca   = -10;
    unsigned short int     usia  = 1;

    int                    arr[5] = { 10,20,30,40,50 };

    if(sli == ca)
        printf("***-09-01**** N   G ****\n");
    else
        printf("***-09-01*** O     K ***\n");

    if(sli == ia)
        printf("***-09-02*** O     K ***\n");
    else
        printf("***-09-02**** N   G ****\n");

    if(sli == sia)
        printf("***-09-03**** N   G ****\n");
    else
        printf("***-09-03*** O     K ***\n");

    if(sli == lia)
        printf("***-09-04*** O     K ***\n");
    else
        printf("***-09-04**** N   G ****\n");

    if(sli == llia)
        printf("***-09-05**** N   G ****\n");
    else
        printf("***-09-05*** O     K ***\n");

    if(sli == flta)
        printf("***-09-06*** O     K ***\n");
    else
        printf("***-09-06**** N   G ****\n");

    if(sli == dbla)
        printf("***-09-07*** O     K ***\n");
    else
        printf("***-09-07**** N   G ****\n");

    if(sli == ldbla)
        printf("***-09-08*** O     K ***\n");
    else
        printf("***-09-08**** N   G ****\n");

    if(sli == sca)
        printf("***-09-09**** N   G ****\n");
    else
        printf("***-09-09*** O     K ***\n");

    if(sli == usia)
        printf("***-09-10**** N   G ****\n");
    else
        printf("***-09-10*** O     K ***\n");

    if(sli == 10.00)
        printf("***-09-11*** O     K ***\n");
    else
        printf("***-09-11**** N   G ****\n");

    if(sli == arr[0])
        printf("***-09-12*** O     K ***\n");
    else
        printf("***-09-12**** N   G ****\n");

    return 0;
}


int test10 (void)
{
    unsigned long int      uli   = 10;

    char                   ca    = 9;
    int                    ia    = 10;
    short int              sia   = 11;
    long int               lia   = 10.5;
#ifndef nollint
    long long int          llia  = 9.95;
#else
    long int               llia  = 9.95;
#endif
    float                  flta  = 10.00000;
    double                 dbla  = 100000000000000.e-13;
    long double            ldbla = 0.1e+2;
    signed char            sca   = -10;
    unsigned short int     usia  = 1;

    struct tag1 {
                  int      sta;
                  long     stb;
                  float    stc;
                } st1 ={ 10,20,30 };

    if(uli == ca)
        printf("***-10-01**** N   G ****\n");
    else
        printf("***-10-01*** O     K ***\n");

    if(uli == ia)
        printf("***-10-02*** O     K ***\n");
    else
        printf("***-10-02**** N   G ****\n");

    if(uli == sia)
        printf("***-10-03**** N   G ****\n");
    else
        printf("***-10-03*** O     K ***\n");

    if(uli == lia)
        printf("***-10-04*** O     K ***\n");
    else
        printf("***-10-04**** N   G ****\n");

    if(uli == llia)
        printf("***-10-05**** N   G ****\n");
    else
        printf("***-10-05*** O     K ***\n");

    if(uli == flta)
        printf("***-10-06*** O     K ***\n");
    else
        printf("***-10-06**** N   G ****\n");

    if(uli == dbla)
        printf("***-10-07*** O     K ***\n");
    else
        printf("***-10-07**** N   G ****\n");

    if(uli == ldbla)
        printf("***-10-08*** O     K ***\n");
    else
        printf("***-10-08**** N   G ****\n");

    if(uli == sca)
        printf("***-10-09**** N   G ****\n");
    else
        printf("***-10-09*** O     K ***\n");

    if(uli == usia)
        printf("***-10-10**** N   G ****\n");
    else
        printf("***-10-10*** O     K ***\n");

    if(uli == 10.00)
        printf("***-10-11*** O     K ***\n");
    else
        printf("***-10-11**** N   G ****\n");

    if(uli == st1.sta)
        printf("***-10-12*** O     K ***\n");
    else
        printf("***-10-12**** N   G ****\n");

    return 0;
}


int test11 (void)
{
    volatile int           *pvi;
    volatile int           rpvi;

    int                    *pi;
    int                    rpi;
    volatile int           *pvia;
    volatile int           rpvia;
    int                    *pia;
    int                    rpia;
    void                   *a;
    int                    b;
    const void             *cva;
    int                    c;
    struct tag1            *st1;
    struct tag1 {int d;} rst1;

    pvi   = &rpvi;
    pi    = &rpi;
    pvia  = &rpvia;
    pia   = &rpia;
    a     = (void *)&b;
    cva   = (const void *)&c;
    st1   = &rst1;

    if(pvi == pvia)
        printf("***-11-01**** N   G ****\n");
    else
        printf("***-11-01*** O     K ***\n");

    if(pvi == pi)
        printf("***-11-02**** N   G ****\n");
    else
        printf("***-11-02*** O     K ***\n");

    if(pvi == 0)
        printf("***-11-03**** N   G ****\n");
    else
        printf("***-11-03*** O     K ***\n");

    if(pi == pvi)
        printf("***-11-04**** N   G ****\n");
    else
        printf("***-11-04*** O     K ***\n");

    if(pi == pia)
        printf("***-11-05**** N   G ****\n");
    else
        printf("***-11-05*** O     K ***\n");

        printf("***-11-06*** O     K ***\n");

        printf("***-11-07*** O     K ***\n");

    if(pi == 0)
        printf("***-11-08**** N   G ****\n");
    else
        printf("***-11-08*** O     K ***\n");

        printf("***-11-09*** O     K ***\n");

        printf("***-11-10*** O     K ***\n");

    if(st1 == 0)
        printf("***-11-11**** N   G ****\n");
    else
        printf("***-11-11*** O     K ***\n");

        printf("***-11-12*** O     K ***\n");

        printf("***-11-13*** O     K ***\n");

        printf("***-11-14*** O     K ***\n");

        printf("***-11-15*** O     K ***\n");

    if(pi == 0)
        printf("***-11-16**** N   G ****\n");
    else
        printf("***-11-16*** O     K ***\n");

    if(0 == pi)
        printf("***-11-17**** N   G ****\n");
    else
        printf("***-11-17*** O     K ***\n");

    if(0 == pi+1)
        printf("***-11-18**** N   G ****\n");
    else
        printf("***-11-18*** O     K ***\n");

    return 0;
}


int test12 (void)
{
    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 4;
    long int               lia   = 8;
#ifndef nollint
    long long int          llia  = 16;
#else
    long int               llia  = 16;
#endif
    float                  flta  = 32;
    double                 dbla  = 64;
    long double            ldbla = 128;
    signed char            sca   = 255;
    unsigned short int     usia  = 512;

    if(1 == ca)
        printf("***-12-01*** O     K ***\n");
    else
        printf("***-12-01**** N   G ****\n");

    if(2 == ia)
        printf("***-12-02*** O     K ***\n");
    else
        printf("***-12-02**** N   G ****\n");

    if(4 == sia)
        printf("***-12-03*** O     K ***\n");
    else
        printf("***-12-03**** N   G ****\n");

    if(8 == lia)
        printf("***-12-04*** O     K ***\n");
    else
        printf("***-12-04**** N   G ****\n");

    if(16 == llia)
        printf("***-12-05*** O     K ***\n");
    else
        printf("***-12-05**** N   G ****\n");

    if(32 == flta)
        printf("***-12-06*** O     K ***\n");
    else
        printf("***-12-06**** N   G ****\n");

    if(64 == dbla)
        printf("***-12-07*** O     K ***\n");
    else
        printf("***-12-07**** N   G ****\n");

    if(128 == ldbla)
        printf("***-12-08*** O     K ***\n");
    else
        printf("***-12-08**** N   G ****\n");

    if(-1 == sca)
        printf("***-12-09*** O     K ***\n");
    else
        printf("***-12-09**** N   G ****\n");

    if(512 == usia)
        printf("***-12-10*** O     K ***\n");
    else
        printf("***-12-10**** N   G ****\n");

    if(10 == 10.00)
        printf("***-12-11*** O     K ***\n");
    else
        printf("***-12-11**** N   G ****\n");

    if(10 == 5<<1)
        printf("***-12-12*** O     K ***\n");
    else
        printf("***-12-12**** N   G ****\n");

    return 0;
}


int test13 (void)
{
    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 4;
    long int               lia   = 8;
#ifndef nollint
    long long int          llia  = 16;
#else
    long int               llia  = 16;
#endif
    float                  flta  = 32;
    double                 dbla  = 64;
    long double            ldbla = 128;
    signed char            sca   = 255;
    unsigned short int     usia  = 512;

    if(2+3-4 == ca)
        printf("***-13-01*** O     K ***\n");
    else
        printf("***-13-01**** N   G ****\n");

    if(2*!0 == ia)
        printf("***-13-02*** O     K ***\n");
    else
        printf("***-13-02**** N   G ****\n");

#if INT64
    if(sizeof(int) == sia*2)
#else
    if(sizeof(int) == sia)
#endif
        printf("***-13-03*** O     K ***\n");
    else
        printf("***-13-03**** N   G ****\n");

    if(sizeof((double)ia) == lia)
        printf("***-13-04*** O     K ***\n");
    else
        printf("***-13-04**** N   G ****\n");

    if(1+15 == llia)
        printf("***-13-05*** O     K ***\n");
    else
        printf("***-13-05**** N   G ****\n");

    if(sizeof(long long int)<<sizeof(short int) == flta)
        printf("***-13-06*** O     K ***\n");
    else
        printf("***-13-06**** N   G ****\n");

    if(64<=100 != dbla)
        printf("***-13-07*** O     K ***\n");
    else
        printf("***-13-07**** N   G ****\n");

    if(1*2*3+4*5*6+2 == ldbla)
        printf("***-13-08*** O     K ***\n");
    else
        printf("***-13-08**** N   G ****\n");

    if(-1>>3<<2<<1 == sca-7)
        printf("***-13-09*** O     K ***\n");
    else
        printf("***-13-09**** N   G ****\n");

    if(1<<9 == usia)
        printf("***-13-10*** O     K ***\n");
    else
        printf("***-13-10**** N   G ****\n");

#if INT64
    if((1+1+1*2/2)%4*4-1+3-sizeof(1)/2 == 10.00)
#else
    if((1+1+1*2/2)%4*4-1+3-sizeof(1) == 10.00)
#endif
        printf("***-13-11*** O     K ***\n");
    else
        printf("***-13-11**** N   G ****\n");

    if(10%11 == 5<<1)
        printf("***-13-12*** O     K ***\n");
    else
        printf("***-13-12**** N   G ****\n");

    return 0;
}
