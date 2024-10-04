#include <stdio.h>
int func13 (void);
int func12 (void);
void func11 (void);
int func10 (void);
int func9 (void);
int func8 (void);
int func7 (void);
int func6 (void);
int func5 (void);
int func4 (void);
int func3 (void);
int func2 (void);
int func1 (void);

int main()
{
    printf("*** TEST FOR EXPRESSION *** STARTED\n");
    func1();
    func2();
    func3();
    func4();
    func5();
    func6();
    func7();
    func8();
    func9();
    func10();
    func11();
    func12();
    func13();
    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}


int func1 (void)
{
    signed char            c     = 10;

    signed char            ca    = 9;
    int                    ia    = 10;
    short int              sia   = 11;
    long int               lia   = 12;
#ifndef nollint
    long long int          llia  = -11;
#endif
    float                  flta  = 10.000001;
    double                 dbla  = 9.99999999999;
    long double            ldbla = 0.100001e+2;
    signed short int       ssia  = -9.99;
    unsigned long int      ulia  = 10;

    if(c < ca)
        printf("***-01-01**** N   G ****\n");
    else
        printf("***-01-01*** O     K ***\n");

    if(c < ia)
        printf("***-01-02**** N   G ****\n");
    else
        printf("***-01-02*** O     K ***\n");

    if(c < sia)
        printf("***-01-03*** O     K ***\n");
    else
        printf("***-01-03**** N   G ****\n");

    if(c < lia)
        printf("***-01-04*** O     K ***\n");
    else
        printf("***-01-04**** N   G ****\n");

#ifndef nollint
    if(c < llia)
        printf("***-01-05**** N   G ****\n");
    else
        printf("***-01-05*** O     K ***\n");
#else
        printf("***-01-05*** O     K ***\n");
#endif

    if(c < flta)
        printf("***-01-06*** O     K ***\n");
    else
        printf("***-01-06**** N   G ****\n");

    if(c < dbla)
        printf("***-01-07**** N   G ****\n");
    else
        printf("***-01-07*** O     K ***\n");

    if(c < ldbla)
        printf("***-01-08*** O     K ***\n");
    else
        printf("***-01-08**** N   G ****\n");

    if(c < ssia)
        printf("***-01-09**** N   G ****\n");
    else
        printf("***-01-09*** O     K ***\n");

    if(c < ulia)
        printf("***-01-10**** N   G ****\n");
    else
        printf("***-01-10*** O     K ***\n");

    if(c < 11)
        printf("***-01-11*** O     K ***\n");
    else
        printf("***-01-11**** N   G ****\n");

    if(c < 1<<4)
        printf("***-01-12*** O     K ***\n");
    else
        printf("***-01-12**** N   G ****\n");

    return 0;
}


int func2 (void)
{
    int                    i     = 2147483646;

    signed char            cb    = 2147483647;
    int                    ib    = 2147483648;
    short int              sib   = 2147483647;
    long int               lib   = 2147483646;
#ifndef nollint
    long long int          llib  = 2147483648;
#endif
    float                  fltb  = 2147.493647e6;
    double                 dblb  = -2147483647.;
    long double            ldblb = 2147483645;
    signed long int        slib  = -2147483647;
#ifndef nollint
    unsigned long long int ullib = 2147483648;
#endif

    if(i < cb)
        printf("***-02-01**** N   G ****\n");
    else
        printf("***-02-01*** O     K ***\n");

#if INT64
    if(i >= ib)
#else
    if(i < ib)
#endif
        printf("***-02-02**** N   G ****\n");
    else
        printf("***-02-02*** O     K ***\n");

    if(i < sib)
        printf("***-02-03**** N   G ****\n");
    else
        printf("***-02-03*** O     K ***\n");

    if(i < lib)
        printf("***-02-04**** N   G ****\n");
    else
        printf("***-02-04*** O     K ***\n");

        printf("***-02-05*** O     K ***\n");

    if(i < fltb)
        printf("***-02-06*** O     K ***\n");
    else
        printf("***-02-06**** N   G ****\n");

    if(i < dblb)
        printf("***-02-07**** N   G ****\n");
    else
        printf("***-02-07*** O     K ***\n");

    if(i < ldblb)
        printf("***-02-08**** N   G  ***\n");
    else
        printf("***-02-08*** O     K ***\n");

    if(i < slib)
        printf("***-02-09**** N   G ****\n");
    else
        printf("***-02-09*** O     K ***\n");

#ifndef nollint
    if(i < ullib)
        printf("***-02-10*** O     K ***\n");
    else
        printf("***-02-10**** N   G ****\n");
#else
        printf("***-02-10*** O     K ***\n");
#endif

    if(i < 32768*32767*2+65535)
        printf("***-02-12*** O     K ***\n");
    else
        printf("***-02-12**** N   G ****\n");

    return 0;
}


int func3 (void)
{
    short int              si    = 512;

    signed char            cc    = 513;
    int                    ic    = 513;
    short int              sic   = -512;
    long int               lic   = 511;
#ifndef nollint
    long long int          llic  = 512;
#endif
    float                  fltc  = 511.999999;
    double                 dblc  = 512.000000001;
    long double            ldblc = 0.513e3;
    signed char            scc   = 512;
    unsigned short int     usic  = 512.5;

    if(si < cc)
        printf("***-03-01**** N   G ****\n");
    else
        printf("***-03-01*** O     K ***\n");

    if(si < ic)
        printf("***-03-02*** O     K ***\n");
    else
        printf("***-03-02**** N   G ****\n");

    if(si < sic)
        printf("***-03-03**** N   G ****\n");
    else
        printf("***-03-03*** O     K ***\n");

    if(si < lic)
        printf("***-03-04**** N   G ****\n");
    else
        printf("***-03-04*** O     K ***\n");

#ifndef nollint
    if(si < llic)
        printf("***-03-05**** N   G ****\n");
    else
        printf("***-03-05*** O     K ***\n");
#else
        printf("***-03-05*** O     K ***\n");
#endif

    if(si < fltc)
        printf("***-03-06**** N   G  ***\n");
    else
        printf("***-03-06*** O     K ***\n");

    if(si < dblc)
        printf("***-03-07*** O     K ***\n");
    else
        printf("***-03-07**** N   G ****\n");

    if(si < ldblc)
        printf("***-03-08*** O     K ***\n");
    else
        printf("***-03-08**** N   G ****\n");

    if(si < scc)
        printf("***-03-09**** N   G ****\n");
    else
        printf("***-03-09*** O     K ***\n");

    if(si < usic)
        printf("***-03-10**** N   G ****\n");
    else
        printf("***-03-10*** O     K ***\n");

    if(si < 512.1)
        printf("***-03-11*** O     K ***\n");
    else
        printf("***-03-11**** N   G ****\n");

    if(si < 2055>>2)
        printf("***-03-12*** O     K ***\n");
    else
        printf("***-03-12**** N   G ****\n");

    return 0;
}



int func4 (void)
{
    long int               li    = -2048;

    signed char            cd    = -256;
    int                    id    = 2047;
    short int              sid   = -2049;
    long int               lid   = -2047;
#ifndef nollint
    long long int          llid  = -2048;
#endif
    float                  fltd  = -2048.0001;
    double                 dbld  = -2.0479999e3;
    long double            ldbld = -2048.;
#ifndef nollint
    signed long long int   sllid = -2045;
#endif
    unsigned char          ucd   = -2049;

    if(li < cd)
        printf("***-04-01*** O     K ***\n");
    else
        printf("***-04-01**** N   G ****\n");

    if(li < id)
        printf("***-04-02*** O     K ***\n");
    else
        printf("***-04-02**** N   G ****\n");

    if(li < sid)
        printf("***-04-03**** N   G ****\n");
    else
        printf("***-04-03*** O     K ***\n");

    if(li < lid)
        printf("***-04-04*** O     K ***\n");
    else
        printf("***-04-04**** N   G ****\n");

#ifndef nollint
    if(li < llid)
        printf("***-04-05**** N   G ****\n");
    else
        printf("***-04-05*** O     K ***\n");
#else
        printf("***-04-05*** O     K ***\n");
#endif

    if(li < fltd)
        printf("***-04-06**** N   G  ***\n");
    else
        printf("***-04-06*** O     K ***\n");

    if(li < dbld)
        printf("***-04-07*** O     K ***\n");
    else
        printf("***-04-07**** N   G ****\n");

    if(li < ldbld)
        printf("***-04-08**** N   G ****\n");
    else
        printf("***-04-08*** O     K ***\n");

#ifndef nollint
    if(li < sllid)
        printf("***-04-09*** O     K ***\n");
    else
        printf("***-04-09**** N   G ****\n");
#else
        printf("***-04-09*** O     K ***\n");
#endif

    if(li < -2040-7)
        printf("***-04-11*** O     K ***\n");
    else
        printf("***-04-11**** N   G ****\n");

    if(li < 2047*-1)
        printf("***-04-12*** O     K ***\n");
    else
        printf("***-04-12**** N   G ****\n");

    return 0;
}


int func5 (void)
{

        printf("***-05-01*** O     K ***\n");
        printf("***-05-02*** O     K ***\n");
        printf("***-05-03*** O     K ***\n");
        printf("***-05-04*** O     K ***\n");
        printf("***-05-05*** O     K ***\n");
        printf("***-05-06*** O     K ***\n");
        printf("***-05-07*** O     K ***\n");
        printf("***-05-08*** O     K ***\n");
        printf("***-05-09*** O     K ***\n");
        printf("***-05-10*** O     K ***\n");
        printf("***-05-11*** O     K ***\n");
        printf("***-05-12*** O     K ***\n");

    return 0;
}


int func6 (void)
{
    float                  flt   = 1.5;

    signed char            cf    = -1;
    int                    inf   = 2;
    short int              sif   = 1.75;
    long int               lif   = 2147483649;
#ifndef nollint
    long long int          llif  = -2;
#endif
    float                  fltf  = 1.4999999;
    double                 dblf  = 1.50000000001;
    long double            ldblf = 0.16e1;
    signed short int       ssif  = -1.6;
    unsigned char          ucf   = 513;

    if(flt < cf)
        printf("***-06-01**** N   G ****\n");
    else
        printf("***-06-01*** O     K ***\n");

    if(flt < inf)
        printf("***-06-02*** O     K ***\n");
    else
        printf("***-06-02**** N   G ****\n");

    if(flt < sif)
        printf("***-06-03**** N   G ****\n");
    else
        printf("***-06-03*** O     K ***\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(flt >= lif)
#else
    if(flt < lif)
#endif
        printf("***-06-04**** N   G ****\n");
    else
        printf("***-06-04*** O     K ***\n");

#ifndef nollint
    if(flt < llif)
        printf("***-06-05**** N   G ****\n");
    else
        printf("***-06-05*** O     K ***\n");
#else
        printf("***-06-05*** O     K ***\n");
#endif

    if(flt < fltf)
        printf("***-06-06**** N   G ****\n");
    else
        printf("***-06-06*** O     K ***\n");

    if(flt < dblf)
        printf("***-06-07*** O     K ***\n");
    else
        printf("***-06-07**** N   G ****\n");

    if(flt < ldblf)
        printf("***-06-08*** O     K ***\n");
    else
        printf("***-06-08**** N   G ****\n");

    if(flt < ssif)
        printf("***-06-09**** N   G ****\n");
    else
        printf("***-06-09*** O     K ***\n");

    if(flt < ucf)
        printf("***-06-10**** N   G ****\n");
    else
        printf("***-06-10*** O     K ***\n");

    if(flt < 16000000000e-11)
        printf("***-06-11**** N   G ****\n");
    else
        printf("***-06-11*** O     K ***\n");

    if(flt < 8*.2/.2/3)
        printf("***-06-12*** O     K ***\n");
    else
        printf("***-06-12**** N   G ****\n");

    return 0;
}


int func7 (void)
{
    double                 dbl   = 2.00001;

    signed char            cg    = -1;
    int                    ig    = 2;
    short int              sig   = 2.5;
    long int               lig   = 2147483649;
#ifndef nollint
    long long int          llig  = -2;
#endif
    float                  fltg  = 2.00002;
    double                 dblg  = 2.00000999999;
    long double            ldblg = 0.20e1;
    signed short int       ssig  = -2.0;
    unsigned char          ucg   = 514;

    if(dbl < cg)
        printf("***-07-01**** N   G ****\n");
    else
        printf("***-07-01*** O     K ***\n");

    if(dbl < ig)
        printf("***-07-02**** N   G ****\n");
    else
        printf("***-07-02*** O     K ***\n");

    if(dbl < sig)
        printf("***-07-03**** N   G ****\n");
    else
        printf("***-07-03*** O     K ***\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(dbl >= lig)
#else
    if(dbl < lig)
#endif
        printf("***-07-04**** N   G ****\n");
    else
        printf("***-07-04*** O     K ***\n");

#ifndef nollint
    if(dbl < llig)
        printf("***-07-05**** N   G ****\n");
    else
        printf("***-07-05*** O     K ***\n");
#else
        printf("***-07-05*** O     K ***\n");
#endif

    if(dbl < fltg)
        printf("***-07-06*** O     K ***\n");
    else
        printf("***-07-06**** N   G ****\n");

    if(dbl < dblg)
        printf("***-07-07**** N   G ****\n");
    else
        printf("***-07-07*** O     K ***\n");

    if(dbl < ldblg)
        printf("***-07-08**** N   G ****\n");
    else
        printf("***-07-08*** O     K ***\n");

    if(dbl < ssig)
        printf("***-07-09**** N   G ****\n");
    else
        printf("***-07-09*** O     K ***\n");

    if(dbl < ucg)
        printf("***-07-10**** N   G ****\n");
    else
        printf("***-07-10*** O     K ***\n");

    if(dbl < 20000000000e-10)
        printf("***-07-11**** N   G ****\n");
    else
        printf("***-07-11*** O     K ***\n");

    if(dbl < 7*.2/.2/2)
        printf("***-07-12*** O     K ***\n");
    else
        printf("***-07-12**** N   G ****\n");

    return 0;
}


int func8 (void)
{
    long double            ldbl  = 2.00001;

    signed char            ch    = -1;
    int                    ih    = 2;
    short int              sih   = 2.5;
    long int               lih   = 2147483649;
#ifndef nollint
    long long int          llih  = -2;
#endif
    float                  flth  = 2.00002;
    double                 dblh  = 2.00000999999;
    long double            ldblh = 0.20e1;
    signed short int       ssih  = -2.0;
    unsigned char          uch   = 514;

    if(ldbl < ch)
        printf("***-08-01**** N   G ****\n");
    else
        printf("***-08-01*** O     K ***\n");

    if(ldbl < ih)
        printf("***-08-02**** N   G ****\n");
    else
        printf("***-08-02*** O     K ***\n");

    if(ldbl < sih)
        printf("***-08-03**** N   G ****\n");
    else
        printf("***-08-03*** O     K ***\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(ldbl >= lih)
#else
    if(ldbl < lih)
#endif
        printf("***-08-04**** N   G ****\n");
    else
        printf("***-08-04*** O     K ***\n");

#ifndef nollint
    if(ldbl < llih)
        printf("***-08-05**** N   G ****\n");
    else
        printf("***-08-05*** O     K ***\n");
#else
        printf("***-08-05*** O     K ***\n");
#endif

    if(ldbl < flth)
        printf("***-08-06*** O     K ***\n");
    else
        printf("***-08-06**** N   G ****\n");

    if(ldbl < dblh)
        printf("***-08-07**** N   G ****\n");
    else
        printf("***-08-07*** O     K ***\n");

    if(ldbl < ldblh)
        printf("***-08-08**** N   G ****\n");
    else
        printf("***-08-08*** O     K ***\n");

    if(ldbl < ssih)
        printf("***-08-09**** N   G ****\n");
    else
        printf("***-08-09*** O     K ***\n");

    if(ldbl < uch)
        printf("***-08-10**** N   G ****\n");
    else
        printf("***-08-10*** O     K ***\n");

    if(ldbl < 20000000000e-10)
        printf("***-08-11**** N   G ****\n");
    else
        printf("***-08-11*** O     K ***\n");

    if(ldbl < 7*.2/.2/2)
        printf("***-08-12*** O     K ***\n");
    else
        printf("***-08-12**** N   G ****\n");

    return 0;
}


int func9 (void)
{
    signed char            sc    = -10;

    signed char            ci    = -9;
    int                    ii    = -10;
    short int              sii   = -11;
    long int               lii   = -12;
#ifndef nollint
    long long int          llii  = 11;
#endif
    float                  flti  = -10.0000001;
    double                 dbli  = -9.9999999999;
    long double            ldbli = -0.125e2;
    signed short int       ssii  = 9.99;
    unsigned char          uci   = -9;

    if(sc < ci)
        printf("***-09-01*** O     K ***\n");
    else
        printf("***-09-01**** N   G ****\n");

    if(sc < ii)
        printf("***-09-02**** N   G ****\n");
    else
        printf("***-09-02*** O     K ***\n");

    if(sc < sii)
        printf("***-09-03**** N   G ****\n");
    else
        printf("***-09-03*** O     K ***\n");

    if(sc < lii)
        printf("***-09-04**** N   G ****\n");
    else
        printf("***-09-04*** O     K ***\n");

#ifndef nollint
    if(sc < llii)
        printf("***-09-05*** O     K ***\n");
    else
        printf("***-09-05**** N   G ****\n");
#else
        printf("***-09-05*** O     K ***\n");
#endif

    if(sc < flti)
        printf("***-09-06**** N   G ****\n");
    else
        printf("***-09-06*** O     K ***\n");

    if(sc < dbli)
        printf("***-09-07*** O     K ***\n");
    else
        printf("***-09-07**** N   G ****\n");

    if(sc < ldbli)
        printf("***-09-08**** N   G ****\n");
    else
        printf("***-09-08*** O     K ***\n");

    if(sc < ssii)
        printf("***-09-09*** O     K ***\n");
    else
        printf("***-09-09**** N   G ****\n");

    if(sc < -10.0000001)
        printf("***-09-11**** N   G ****\n");
    else
        printf("***-09-11*** O     K ***\n");

    if(sc < -2*8>>1)
        printf("***-09-12*** O     K ***\n");
    else
        printf("***-09-12**** N   G ****\n");

    return 0;
}


int func10 (void)
{
    unsigned int           ui    = 2147483646;

    signed char            cj    = 2147483647;
    int                    ij    = 2147483648;
    short int              sij   = 2147483647;
    long int               lij   = 2147483646;
#ifndef nollint
    long long int          llij  = 2147483648;
#endif
    float                  fltj  = 2.14749e9;
    double                 dblj  = -2147483647.;
    long double            ldblj = 2147483645;
    signed long int        slij  = -2147483647;
    unsigned long int      ulij  = -2147483646;

        printf("***-10-01*** O     K ***\n");
    if(ui < ij)
        printf("***-10-02*** O     K ***\n");
    else
        printf("***-10-02**** N   G ****\n");

        printf("***-10-03*** O     K ***\n");
    if(ui < lij)
        printf("***-10-04**** N   G ****\n");
    else
        printf("***-10-04*** O     K ***\n");

        printf("***-10-05*** O     K ***\n");

    if(ui < fltj)
        printf("***-10-06*** O     K ***\n");
    else
        printf("***-10-06**** N   G ****\n");

    if(ui < dblj)
        printf("***-10-07**** N   G ****\n");
    else
        printf("***-10-07*** O     K ***\n");

    if(ui < ldblj)
        printf("***-10-08**** N   G ****\n");
    else
        printf("***-10-08*** O     K ***\n");

#if LONG64 || __x86_64__ || __aarch64__
    if(ui > slij)
#else
    if(ui < slij)
#endif
        printf("***-10-09*** O     K ***\n");
    else
        printf("***-10-09**** N   G ****\n");

    if(ui < ulij)
        printf("***-10-10*** O     K ***\n");
    else
        printf("***-10-10**** N   G ****\n");

    if(ui < 2147483648)
        printf("***-10-11*** O     K ***\n");
    else
        printf("***-10-11**** N   G ****\n");

    if(ui < 256<<23)
        printf("***-10-12*** O     K ***\n");
    else
        printf("***-10-12**** N   G ****\n");

    return 0;
}


void func11 (void)
{
    volatile char                (*vcarr1)[];
    volatile char                (*vcarr2)[];
    volatile char                rvcarr[5];

    volatile char                (*vcarra1)[];
    volatile char                (*vcarra2)[];
    volatile char                rvcarra[10];

    char                         (*carr1)[];
    char                         (*carr2)[];
    char                         (*carr3)[];
    char                         rcarr[5];

    char                         (*carra1)[];
    char                         (*carra2)[];
    char                         (*carra3)[];
    char                         rcarra[10];

    vcarr1 = (char (*)[])(rvcarr+1);
    vcarr2 = (char (*)[])(rvcarr+2);
    vcarra1 = (char (*)[])(rvcarra+1);
    vcarra2 = (char (*)[])(rvcarra+2);
    carr1  = (char (*)[])(rcarr+1);
    carr2  = (char (*)[])(rcarr+2);
    carr3  = (char (*)[])(rcarr+3);
    carra1 = (char (*)[])(rcarra+1);
    carra2 = (char (*)[])(rcarra+2);
    carra3 = (char (*)[])(rcarra+3);

    if(vcarr1 < vcarr2)
        printf("***-11-01*** O     K ***\n");
    else
        printf("***-11-01**** N   G ****\n");

    if(vcarra1 < vcarra2)
        printf("***-11-02*** O     K ***\n");
    else
        printf("***-11-02**** N   G ****\n");

    if(carr1 < carr2)
        printf("***-11-03*** O     K ***\n");
    else
        printf("***-11-03**** N   G ****\n");

    if(carra1 < carra2)
        printf("***-11-04*** O     K ***\n");
    else
        printf("***-11-04**** N   G ****\n");

    if(carr1 < carr3)
        printf("***-11-05*** O     K ***\n");
    else
        printf("***-11-05**** N   G ****\n");

    if(carr2 < carr3)
        printf("***-11-06*** O     K ***\n");
    else
        printf("***-11-06**** N   G ****\n");

    if(carra1 < carra3)
        printf("***-11-07*** O     K ***\n");
    else
        printf("***-11-07**** N   G ****\n");

    if(carra2 < carra3)
        printf("***-11-08*** O     K ***\n");
    else
        printf("***-11-08**** N   G ****\n");

    return;
}


int func12 (void)
{
    signed char            ck    = 255;
    int                    ik    = 2147483647;
    short int              sik   = 32767;
    long int               lik   = 2147483648;
#ifndef nollint
    long long int          llik  = 2147483648;
#endif
    float                  fltk  = 0.5;
    double                 dblk  = 0.25;
    long double            ldblk = 0.125;
    signed long int        slik  = -2147483648;
    unsigned long int      ulik  = 2147483648;

    if(256 < ck)
        printf("***-12-01**** N   G ****\n");
    else
        printf("***-12-01*** O     K ***\n");

    if(32768 < sik)
        printf("***-12-03**** N   G ****\n");
    else
        printf("***-12-03*** O     K ***\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(0 >= lik)
#else
    if(0 < lik)
#endif
        printf("***-12-04**** N   G ****\n");
    else
        printf("***-12-04*** O     K ***\n");

        printf("***-12-05*** O     K ***\n");

    if(0.499999 < fltk)
        printf("***-12-06*** O     K ***\n");
    else
        printf("***-12-06**** N   G ****\n");

    if(0.250001 < dblk)
        printf("***-12-07**** N   G ****\n");
    else
        printf("***-12-07*** O     K ***\n");

    if(.12500000000101 < ldblk)
        printf("***-12-08**** N   G ****\n");
    else
        printf("***-12-08*** O     K ***\n");

    if(-2147483647 < slik)
        printf("***-12-09**** N   G ****\n");
    else
        printf("***-12-09*** O     K ***\n");

    if(2147483647 < ulik)
        printf("***-12-10*** O     K ***\n");
    else
        printf("***-12-10**** N   G ****\n");

    if(4294967295>>2 < 256<<22)
        printf("***-12-12*** O     K ***\n");
    else
        printf("***-12-12**** N   G ****\n");

    return 0;
}


int func13 (void)
{
    signed char            cl    = 1;
    int                    il    = 2;
    short int              sil   = 4;
    long int               lil   = 8;
#ifndef nollint
    long long int          llil  = 16;
#endif
    float                  fltl  = 32;
    double                 dbll  = 64;
    long double            ldbll = 128;
    signed long int        slil  = 256;
    unsigned long int      ulil  = 512;

    if(cl<<2 < cl<<1)
        printf("***-13-01**** N   G ****\n");
    else
        printf("***-13-01*** O     K ***\n");

    if(1+2<<1 < il-1<<1)
        printf("***-13-02**** N   G ****\n");
    else
        printf("***-13-02*** O     K ***\n");

    if(2*3 < sil)
        printf("***-13-03**** N   G ****\n");
    else
        printf("***-13-03*** O     K ***\n");

    if(16/2 < lil)
        printf("***-13-04**** N   G ****\n");
    else
        printf("***-13-04*** O     K ***\n");

#ifndef nollint
    if(31%16 < llil)
        printf("***-13-05*** O     K ***\n");
    else
        printf("***-13-05**** N   G ****\n");

    if((unsigned long long int)llil  < fltl)
        printf("***-13-06*** O     K ***\n");
    else
        printf("***-13-06**** N   G ****\n");
#else
        printf("***-13-05*** O     K ***\n");
        printf("***-13-06*** O     K ***\n");
#endif

    if(sizeof(long double) < dbll)
        printf("***-13-07*** O     K ***\n");
    else
        printf("***-13-07**** N   G ****\n");

    if(1+3*3+1<<2<<2 < ldbll)
        printf("***-13-08**** N   G ****\n");
    else
        printf("***-13-08*** O     K ***\n");

        printf("***-13-09*** O     K ***\n");

    if(1<<2<<3>>2>>1 < ulil)
        printf("***-13-10*** O     K ***\n");
    else
        printf("***-13-10**** N   G ****\n");

    if(4294967295>>2 < 256<<22)
        printf("***-13-12*** O     K ***\n");
    else
        printf("***-13-12**** N   G ****\n");

    return 0;
}
