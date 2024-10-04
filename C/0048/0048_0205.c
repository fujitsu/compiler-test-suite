#include <stdio.h>
int test13();
int test12();
int test11();
int test10();
int test09();
int test08();
int test07();
int test06();
int test05();
int test04();
int test03();
int test02();
int test01();
int main()
{
    printf("*** TEST FOR EXPRESSION *** STARTED\n");
    test01();
    test02();
    test03();
    test04();
    test05();
    test06();
    test07();
    test08();
    test09();
    test10();
    test11();
    test12();
    test13();
    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}


int test01()
{
    char                   c;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    float                  flta  = .5;
    double                 dbla  = 1.25;
    long double            ldbla = .125e3;
    signed long int        slia  = 6;
    unsigned short int     usia  = 7;

    printf("*** -01 *** STARTED\n");

    c = ca;
    if(c == 1)
        printf("***-01-01*** O     K ***\n");
    else
        printf("***-01-01**** N   G ****\n");

    c = ia;
    if(c == 2)
        printf("***-01-02*** O     K ***\n");
    else
        printf("***-01-02**** N   G ****\n");

    c = sia;
    if(c == 3)
        printf("***-01-03*** O     K ***\n");
    else
        printf("***-01-03**** N   G ****\n");

    c = lia;
    if(c == 4)
        printf("***-01-04*** O     K ***\n");
    else
        printf("***-01-04**** N   G ****\n");

    c = llia;
    if(c == 5)
        printf("***-01-05*** O     K ***\n");
    else
        printf("***-01-05**** N   G ****\n");

    c = flta;
    if(c == 0)
        printf("***-01-06*** O     K ***\n");
    else
        printf("***-01-06**** N   G ****\n");

    c = dbla;
    if(c == 1)
        printf("***-01-07*** O     K ***\n");
    else
        printf("***-01-07**** N   G ****\n");

    c = ldbla;
    if(c == 125)
        printf("***-01-08*** O     K ***\n");
    else
        printf("***-01-08**** N   G ****\n");

    c = slia;
    if(c == 6)
        printf("***-01-09*** O     K ***\n");
    else
        printf("***-01-09**** N   G ****\n");

    c = usia;
    if(c == 7)
        printf("***-01-10*** O     K ***\n");
    else
        printf("***-01-10**** N   G ****\n");

    printf("*** -01 *** ENDED\n");
}


int test02()
{
    int                    i;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    float                  flta  = .5;
    double                 dbla  = 1.25;
    long double            ldbla = .125e3;
    signed long int        slia  = 6;
    unsigned short int     usia  = 7;

    printf("*** -02 *** STARTED\n");

    i = ca;
    if(i == 1)
        printf("***-02-01*** O     K ***\n");
    else
        printf("***-02-01**** N   G ****\n");

    i = ia;
    if(i == 2)
        printf("***-02-02*** O     K ***\n");
    else
        printf("***-02-02**** N   G ****\n");

    i = sia;
    if(i == 3)
        printf("***-02-03*** O     K ***\n");
    else
        printf("***-02-03**** N   G ****\n");

    i = lia;
    if(i == 4)
        printf("***-02-04*** O     K ***\n");
    else
        printf("***-02-04**** N   G ****\n");

    i = llia;
    if(i == 5)
        printf("***-02-05*** O     K ***\n");
    else
        printf("***-02-05**** N   G ****\n");

    i = flta;
    if(i == 0)
        printf("***-02-06*** O     K ***\n");
    else
        printf("***-02-06**** N   G ****\n");

    i = dbla;
    if(i == 1)
        printf("***-02-07*** O     K ***\n");
    else
        printf("***-02-07**** N   G ****\n");

    i = ldbla;
    if(i == 125)
        printf("***-02-08*** O     K ***\n");
    else
        printf("***-02-08**** N   G ****\n");

    i = slia;
    if(i == 6)
        printf("***-02-09*** O     K ***\n");
    else
        printf("***-02-09**** N   G ****\n");

    i = usia;
    if(i == 7)
        printf("***-02-10*** O     K ***\n");
    else
        printf("***-02-10**** N   G ****\n");

    printf("*** -02 *** ENDED\n");
}


int test03()
{
    short int              si;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    float                  flta  = .5;
    double                 dbla  = 1.25;
    long double            ldbla = .125e3;
    signed long int        slia  = 6;
    unsigned short int     usia  = 7;

    printf("*** -03 *** STARTED\n");

    si = ca;
    if(si == 1)
        printf("***-03-01*** O     K ***\n");
    else
        printf("***-03-01**** N   G ****\n");

    si = ia;
    if(si == 2)
        printf("***-03-02*** O     K ***\n");
    else
        printf("***-03-02**** N   G ****\n");

    si = sia;
    if(si == 3)
        printf("***-03-03*** O     K ***\n");
    else
        printf("***-03-03**** N   G ****\n");

    si = lia;
    if(si == 4)
        printf("***-03-04*** O     K ***\n");
    else
        printf("***-03-04**** N   G ****\n");

    si = llia;
    if(si == 5)
        printf("***-03-05*** O     K ***\n");
    else
        printf("***-03-05**** N   G ****\n");

    si = flta;
    if(si == 0)
        printf("***-03-06*** O     K ***\n");
    else
        printf("***-03-06**** N   G ****\n");

    si = dbla;
    if(si == 1)
        printf("***-03-07*** O     K ***\n");
    else
        printf("***-03-07**** N   G ****\n");

    si = ldbla;
    if(si == 125)
        printf("***-03-08*** O     K ***\n");
    else
        printf("***-03-08**** N   G ****\n");

    si = slia;
    if(si == 6)
        printf("***-03-09*** O     K ***\n");
    else
        printf("***-03-09**** N   G ****\n");

    si = usia;
    if(si == 7)
        printf("***-03-10*** O     K ***\n");
    else
        printf("***-03-10**** N   G ****\n");

    printf("*** -03 *** ENDED\n");
}


int test04()
{
    long  int              li;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    float                  flta  = .5;
    double                 dbla  = 1.25;
    long double            ldbla = .125e3;
    signed long int        slia  = 6;
    unsigned short int     usia  = 7;

    printf("*** -04 *** STARTED\n");

    li = ca;
    if(li == 1)
        printf("***-04-01*** O     K ***\n");
    else
        printf("***-04-01**** N   G ****\n");

    li = ia;
    if(li == 2)
        printf("***-04-02*** O     K ***\n");
    else
        printf("***-04-02**** N   G ****\n");

    li = sia;
    if(li == 3)
        printf("***-04-03*** O     K ***\n");
    else
        printf("***-04-03**** N   G ****\n");

    li = lia;
    if(li == 4)
        printf("***-04-04*** O     K ***\n");
    else
        printf("***-04-04**** N   G ****\n");

    li = llia;
    if(li == 5)
        printf("***-04-05*** O     K ***\n");
    else
        printf("***-04-05**** N   G ****\n");

    li = flta;
    if(li == 0)
        printf("***-04-06*** O     K ***\n");
    else
        printf("***-04-06**** N   G ****\n");

    li = dbla;
    if(li == 1)
        printf("***-04-07*** O     K ***\n");
    else
        printf("***-04-07**** N   G ****\n");

    li = ldbla;
    if(li == 125)
        printf("***-04-08*** O     K ***\n");
    else
        printf("***-04-08**** N   G ****\n");

    li = slia;
    if(li == 6)
        printf("***-04-09*** O     K ***\n");
    else
        printf("***-04-09**** N   G ****\n");

    li = usia;
    if(li == 7)
        printf("***-04-10*** O     K ***\n");
    else
        printf("***-04-10**** N   G ****\n");

    printf("*** -04 *** ENDED\n");
}


int test05()
{
    long long int          lli;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    float                  flta  = .5;
    double                 dbla  = 1.25;
    long double            ldbla = .125e3;
    signed long int        slia  = 6;
    unsigned short int     usia  = 7;

    printf("*** -05 *** STARTED\n");

    lli = ca;
    if(lli == 1)
        printf("***-05-01*** O     K ***\n");
    else
        printf("***-05-01**** N   G ****\n");

    lli = ia;
    if(lli == 2)
        printf("***-05-02*** O     K ***\n");
    else
        printf("***-05-02**** N   G ****\n");

    lli = sia;
    if(lli == 3)
        printf("***-05-03*** O     K ***\n");
    else
        printf("***-05-03**** N   G ****\n");

    lli = lia;
    if(lli == 4)
        printf("***-05-04*** O     K ***\n");
    else
        printf("***-05-04**** N   G ****\n");

    lli = llia;
    if(lli == 5)
        printf("***-05-05*** O     K ***\n");
    else
        printf("***-05-05**** N   G ****\n");

    lli = flta;
    if(lli == 0)
        printf("***-05-06*** O     K ***\n");
    else
        printf("***-05-06**** N   G ****\n");

    lli = dbla;
    if(lli == 1)
        printf("***-05-07*** O     K ***\n");
    else
        printf("***-05-07**** N   G ****\n");

    lli = ldbla;
    if(lli == 125)
        printf("***-05-08*** O     K ***\n");
    else
        printf("***-05-08**** N   G ****\n");

    lli = slia;
    if(lli == 6)
        printf("***-05-09*** O     K ***\n");
    else
        printf("***-05-09**** N   G ****\n");

    lli = usia;
    if(lli == 7)
        printf("***-05-10*** O     K ***\n");
    else
        printf("***-05-10**** N   G ****\n");

    printf("*** -05 *** ENDED\n");
}


int test06()
{
    float                  flt;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    float                  flta  = .5;
    double                 dbla  = 1.25;
    long double            ldbla = .125e3;
    signed long int        slia  = 6;
    unsigned short int     usia  = 7;

    printf("*** -06 *** STARTED\n");

    flt = ca;
    if(flt == 1)
        printf("***-06-01*** O     K ***\n");
    else
        printf("***-06-01**** N   G ****\n");

    flt = ia;
    if(flt == 2)
        printf("***-06-02*** O     K ***\n");
    else
        printf("***-06-02**** N   G ****\n");

    flt = sia;
    if(flt == 3)
        printf("***-06-03*** O     K ***\n");
    else
        printf("***-06-03**** N   G ****\n");

    flt = lia;
    if(flt == 4)
        printf("***-06-04*** O     K ***\n");
    else
        printf("***-06-04**** N   G ****\n");

    flt = llia;
    if(flt == 5)
        printf("***-06-05*** O     K ***\n");
    else
        printf("***-06-05**** N   G ****\n");

    flt = flta;
    if(flt == 0.5)
        printf("***-06-06*** O     K ***\n");
    else
        printf("***-06-06**** N   G ****\n");

    flt = dbla;
    if(flt == 1.25)
        printf("***-06-07*** O     K ***\n");
    else
        printf("***-06-07**** N   G ****\n");

    flt = ldbla;
    if(flt == 125)
        printf("***-06-08*** O     K ***\n");
    else
        printf("***-06-08**** N   G ****\n");

    flt = slia;
    if(flt == 6)
        printf("***-06-09*** O     K ***\n");
    else
        printf("***-06-09**** N   G ****\n");

    flt = usia;
    if(flt == 7)
        printf("***-06-10*** O     K ***\n");
    else
        printf("***-06-10**** N   G ****\n");

    printf("*** -06 *** ENDED\n");
}


int test07()
{
    double                 dbl;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    float                  flta  = .5;
    double                 dbla  = 1.25;
    long double            ldbla = .125e3;
    signed long int        slia  = 6;
    unsigned short int     usia  = 7;

    printf("*** -07 *** STARTED\n");

    dbl = ca;
    if(dbl == 1)
        printf("***-07-01*** O     K ***\n");
    else
        printf("***-07-01**** N   G ****\n");

    dbl = ia;
    if(dbl == 2)
        printf("***-07-02*** O     K ***\n");
    else
        printf("***-07-02**** N   G ****\n");

    dbl = sia;
    if(dbl == 3)
        printf("***-07-03*** O     K ***\n");
    else
        printf("***-07-03**** N   G ****\n");

    dbl = lia;
    if(dbl == 4)
        printf("***-07-04*** O     K ***\n");
    else
        printf("***-07-04**** N   G ****\n");

    dbl = llia;
    if(dbl == 5)
        printf("***-07-05*** O     K ***\n");
    else
        printf("***-07-05**** N   G ****\n");

    dbl = flta;
    if(dbl == 0.5)
        printf("***-07-06*** O     K ***\n");
    else
        printf("***-07-06**** N   G ****\n");

    dbl = dbla;
    if(dbl == 1.25)
        printf("***-07-07*** O     K ***\n");
    else
        printf("***-07-07**** N   G ****\n");

    dbl = ldbla;
    if(dbl == 125)
        printf("***-07-08*** O     K ***\n");
    else
        printf("***-07-08**** N   G ****\n");

    dbl = slia;
    if(dbl == 6)
        printf("***-07-09*** O     K ***\n");
    else
        printf("***-07-09**** N   G ****\n");

    dbl = usia;
    if(dbl == 7)
        printf("***-07-10*** O     K ***\n");
    else
        printf("***-07-10**** N   G ****\n");

    printf("*** -07 *** ENDED\n");
}


int test08()
{
    long double            ldbl;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    float                  flta  = .5;
    double                 dbla  = 1.25;
    long double            ldbla = .125e3;
    signed long int        slia  = 6;
    unsigned short int     usia  = 7;

    printf("*** -08 *** STARTED\n");

    ldbl = ca;
    if(ldbl == 1)
        printf("***-08-01*** O     K ***\n");
    else
        printf("***-08-01**** N   G ****\n");

    ldbl = ia;
    if(ldbl == 2)
        printf("***-08-02*** O     K ***\n");
    else
        printf("***-08-02**** N   G ****\n");

    ldbl = sia;
    if(ldbl == 3)
        printf("***-08-03*** O     K ***\n");
    else
        printf("***-08-03**** N   G ****\n");

    ldbl = lia;
    if(ldbl == 4)
        printf("***-08-04*** O     K ***\n");
    else
        printf("***-08-04**** N   G ****\n");

    ldbl = llia;
    if(ldbl == 5)
        printf("***-08-05*** O     K ***\n");
    else
        printf("***-08-05**** N   G ****\n");

    ldbl = flta;
    if(ldbl == 0.5)
        printf("***-08-06*** O     K ***\n");
    else
        printf("***-08-06**** N   G ****\n");

    ldbl = dbla;
    if(ldbl == 1.25)
        printf("***-08-07*** O     K ***\n");
    else
        printf("***-08-07**** N   G ****\n");

    ldbl = ldbla;
    if(ldbl == 125)
        printf("***-08-08*** O     K ***\n");
    else
        printf("***-08-08**** N   G ****\n");

    ldbl = slia;
    if(ldbl == 6)
        printf("***-08-09*** O     K ***\n");
    else
        printf("***-08-09**** N   G ****\n");

    ldbl = usia;
    if(ldbl == 7)
        printf("***-08-10*** O     K ***\n");
    else
        printf("***-08-10**** N   G ****\n");

    printf("*** -08 *** ENDED\n");
}


int test09()
{
    signed short int       ssi;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    float                  flta  = .5;
    double                 dbla  = 1.25;
    long double            ldbla = .125e3;
    signed long int        slia  = 6;
    unsigned short int     usia  = 7;

    printf("*** -09 *** STARTED\n");

    ssi = ca;
    if(ssi == 1)
        printf("***-09-01*** O     K ***\n");
    else
        printf("***-09-01**** N   G ****\n");

    ssi = ia;
    if(ssi == 2)
        printf("***-09-02*** O     K ***\n");
    else
        printf("***-09-02**** N   G ****\n");

    ssi = sia;
    if(ssi == 3)
        printf("***-09-03*** O     K ***\n");
    else
        printf("***-09-03**** N   G ****\n");

    ssi = lia;
    if(ssi == 4)
        printf("***-09-04*** O     K ***\n");
    else
        printf("***-09-04**** N   G ****\n");

    ssi = llia;
    if(ssi == 5)
        printf("***-09-05*** O     K ***\n");
    else
        printf("***-09-05**** N   G ****\n");

    ssi = flta;
    if(ssi == 0)
        printf("***-09-06*** O     K ***\n");
    else
        printf("***-09-06**** N   G ****\n");

    ssi = dbla;
    if(ssi == 1)
        printf("***-09-07*** O     K ***\n");
    else
        printf("***-09-07**** N   G ****\n");

    ssi = ldbla;
    if(ssi == 125)
        printf("***-09-08*** O     K ***\n");
    else
        printf("***-09-08**** N   G ****\n");

    ssi = slia;
    if(ssi == 6)
        printf("***-09-09*** O     K ***\n");
    else
        printf("***-09-09**** N   G ****\n");

    ssi = usia;
    if(ssi == 7)
        printf("***-09-10*** O     K ***\n");
    else
        printf("***-09-10**** N   G ****\n");

    printf("*** -09 *** ENDED\n");
}


int test10()
{
    unsigned long int      uli;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    float                  flta  = .5;
    double                 dbla  = 1.25;
    long double            ldbla = .125e3;
    signed long int        slia  = 6;
    unsigned short int     usia  = 7;

    printf("*** -10 *** STARTED\n");

    uli = ca;
    if(uli == 1)
        printf("***-10-01*** O     K ***\n");
    else
        printf("***-10-01**** N   G ****\n");

    uli = ia;
    if(uli == 2)
        printf("***-10-02*** O     K ***\n");
    else
        printf("***-10-02**** N   G ****\n");

    uli = sia;
    if(uli == 3)
        printf("***-10-03*** O     K ***\n");
    else
        printf("***-10-03**** N   G ****\n");

    uli = lia;
    if(uli == 4)
        printf("***-10-04*** O     K ***\n");
    else
        printf("***-10-04**** N   G ****\n");

    uli = llia;
    if(uli == 5)
        printf("***-10-05*** O     K ***\n");
    else
        printf("***-10-05**** N   G ****\n");

    uli = flta;
    if(uli == 0)
        printf("***-10-06*** O     K ***\n");
    else
        printf("***-10-06**** N   G ****\n");

    uli = dbla;
    if(uli == 1)
        printf("***-10-07*** O     K ***\n");
    else
        printf("***-10-07**** N   G ****\n");

    uli = ldbla;
    if(uli == 125)
        printf("***-10-08*** O     K ***\n");
    else
        printf("***-10-08**** N   G ****\n");

    uli = slia;
    if(uli == 6)
        printf("***-10-09*** O     K ***\n");
    else
        printf("***-10-09**** N   G ****\n");

    uli = usia;
    if(uli == 7)
        printf("***-10-10*** O     K ***\n");
    else
        printf("***-10-10**** N   G ****\n");

    printf("*** -10 *** ENDED\n");
}


int test11()
{
    volatile char          vca;
    int                    ia    = 1;

    struct tag1 {
                  char     stca;
                  int      stia;
                  double   stda;
                } st1,st2,st3;

    volatile struct tag1 st4;

    union  tag2 {
                  char      unca;
                  short int unsa;
                  int       unia;
                } un1,un2,un3;

    volatile union  tag2 un4;

    st1.stca = 2;
    st1.stia = 3;
    st1.stda = 4;
    st4.stca = 5;
    st4.stia = 6;
    st4.stda = 7;
    un1.unia = 2147483647;
    un4.unia = 2147483647;

    printf("*** -11 *** STARTED\n");

    vca = ia;
    if(vca == 1)
        printf("***-11-01*** O     K ***\n");
    else
        printf("***-11-01**** N   G ****\n");

    st2 = st1;
    if(st2.stca == 2)
        printf("***-11-02*** O     K ***\n");
    else
        printf("***-11-02**** N   G ****\n");

    if(st2.stia == 3)
        printf("***-11-03*** O     K ***\n");
    else
        printf("***-11-03**** N   G ****\n");

    if(st2.stda == 4)
        printf("***-11-04*** O     K ***\n");
    else
        printf("***-11-04**** N   G ****\n");

    un2 = un1;
    if(un2.unia == 2147483647)
        printf("***-11-05*** O     K ***\n");
    else
        printf("***-11-05**** N   G ****\n");

    st3 = st4;
    if(st3.stca == 5)
        printf("***-11-06*** O     K ***\n");
    else
        printf("***-11-06**** N   G ****\n");

    if(st3.stia == 6)
        printf("***-11-07*** O     K ***\n");
    else
        printf("***-11-07**** N   G ****\n");

    if(st3.stda == 7)
        printf("***-11-08*** O     K ***\n");
    else
        printf("***-11-08**** N   G ****\n");

    un3 = un4;
    if(un3.unia == 2147483647)
        printf("***-11-09*** O     K ***\n");
    else
        printf("***-11-09**** N   G ****\n");

    printf("*** -11 *** ENDED\n");
}


int test12()
{
    int const * volatile   icva;
    int const * volatile   icvb;
    int const * volatile   icvc;
    int const * volatile   vpca;
    int const *            pca;
    int const *            cpa,* cpb;
    int                    i=1;
    int                    *ib;

    printf("*** -12 *** STARTED\n");

    icva = icvb = (const int * volatile)&i;
    if(*icva == 1)
        printf("***-12-01*** O     K ***\n");
    else
        printf("***-12-01**** N   G ****\n");

    cpa = (const  int *)&i;
    cpb = cpa;
    if(*cpb == 1)
        printf("***-12-02*** O     K ***\n");
    else
        printf("***-12-02**** N   G ****\n");

    vpca = icvb;
    if(*vpca == 1)
        printf("***-12-03*** O     K ***\n");
    else
        printf("***-12-03**** N   G ****\n");

    pca = cpb;
    if(*pca == 1)
        printf("***-12-04*** O     K ***\n");
    else
        printf("***-12-04**** N   G ****\n");

    printf("*** -12 *** ENDED\n");
}


 int test13()
{
    volatile int *         vipa;
    volatile void  *       vvpa;
    int                    ia    = 1;

    volatile struct tag    *st1;
    volatile void          *va;
    int                    ib    = 2;

    int                    *ic;
    void * volatile        pvva;
    int                    id    = 3;

    struct tag2 *          st2;
    void  *                vpa;
    int                    ie    = 4;

    volatile void  *       vvpb;
    volatile int   *       vipb;
    int                    ifa   = 5;

    void * volatile        pvvb;
    int            *       ig;
    int                    ih    = 6;

    void * volatile        pvvc;
    struct tag3    *       st3;
    int                    ii    = 7;

    char                   ca;
    int                    ij    = 8;

    printf("*** -13 *** STARTED\n");

    vvpa = (volatile void *)&ia;
    vipa = vvpa;
    if(*vipa == 1)
        printf("***-13-01*** O     K ***\n");
    else
        printf("***-13-01**** N   G ****\n");

    va = (volatile void *)&ia;
    st1 = va;
    if(*(int *)st1 == 1)
        printf("***-13-02*** O     K ***\n");
    else
        printf("***-13-02**** N   G ****\n");

    pvva = (void * volatile)&id;
    ic = (int *)pvva;
    if(*ic == 3)
        printf("***-13-03*** O     K ***\n");
    else
        printf("***-13-03**** N   G ****\n");
    vipb = (volatile int  *)&ifa;
    vipb = vipb;
    if(*vipb == 5)
        printf("***-13-05*** O     K ***\n");
    else
        printf("***-13-05**** N   G ****\n");
    ca = 0? printf("***-13-08**** N   G ***\n"): ij*5;
    if(ca == 40)
        printf("***-13-08*** O     K ***\n");
    else
        printf("***-13-08**** N   G ****\n");

    ca = 1? ca>>2: printf("***-13-09**** N   G ***\n");
    if(ca == 10)
        printf("***-13-09*** O     K ***\n");
    else
        printf("***-13-09**** N   G ****\n");

    printf("*** -13 *** ENDED\n");
}
