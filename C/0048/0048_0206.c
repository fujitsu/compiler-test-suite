#include <stdio.h>
int main()
{
    char                   ca    = 1;
    long long int          llia  = 2;
    unsigned short int     usia  = 3;
    int                    ia    = 4;
    short int              sia   = 5;
    signed long int        slia  = 6;
    long int               lia   = 7;
    char                   cb    = 8;
    unsigned long long int ullia = 9;
    int                    *pia;
    int                    rpia  = 10;
    volatile short int     vsia  = 11;
    float                  flta  = 12;
    long double            *plda;
    long double            rplda = 13;
    volatile double        vda   = 14;
    long int               lib   = 15;
    double                 dbla  = 16;
    short int              sib   = 17;
    signed char            sca   = 18;
    int                    ib    = 19;
    long double            lda   = 20;
    unsigned               ua    = 21;
    char                   cc    = 22;
    long int               lic   = 23;
    signed                 sa    = 24;
    int                    ic    = 25;
    short int              sic   = 26;
    long long int          llib  = 27;
    long int               lid   = 28;
    signed short int       ssia  = 29;
    char                   cc2   = 30;

    int                    oia   = 30;
    long double            olda  = 29;
    signed                 osa   = 28;
    float                  ofa   = 27;
    char                   oca   = 26;
    long long int          ollia = 25;
    short int              osia  = 24;
    long long int          ollib = 23;
    char                   ocb   = 22;
    long int               olia  = 21;
    double                 oda   = 20;
    int                    oib   = 19;
    short int              osib  = 18;
    long double            oldb  = 17;
    float                  ofb   = 16;
    char                   occ   = 15;
    long long int          ollic = 14;
    unsigned char          ouca  = 13;
    long int               olib  = 12;
    float                  ofc   = 11;
    signed long int        osli  = 10;
    short int              osic  = 9;
    unsigned int           ouia  = 8;
    long long int          ollid = 7;
    char                   ocd   = 6;
    signed long long int   osllia= 5;
    short int              osid  = 4;
    unsigned short int     ousia = 3;
    unsigned long long int oullia= 2;
    long long int          ollie = 1;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    ca *= oia;
    if(ca = 30)
        printf("***-01*** O     K ***\n");
    else
        printf("***-01**** N   G ****\n");

    llia *= olda;
    if(llia == 58)
        printf("***-02*** O     K ***\n");
    else
        printf("***-02**** N   G ****\n");

    usia *= osa;
    if(usia == 84)
        printf("***-03*** O     K ***\n");
    else
        printf("***-03**** N   G ****\n");

    ia /= ofa;
    if(ia == 0)
        printf("***-04*** O     K ***\n");
    else
        printf("***-04**** N   G ****\n");

    sia /= oca;
    if(sia == 0)
        printf("***-05*** O     K ***\n");
    else
        printf("***-05**** N   G ****\n");

    slia /= ollia;
    if(slia == 0)
        printf("***-06*** O     K ***\n");
    else
        printf("***-06**** N   G ****\n");

    lia %= osia;
    if(lia == 7)
        printf("***-07*** O     K ***\n");
    else
        printf("***-07**** N   G ****\n");

    cb %= ollib;
    if(cb == 8)
        printf("***-08*** O     K ***\n");
    else
        printf("***-08**** N   G ****\n");

    ullia %= ocb;
    if(ullia == 9)
        printf("***-09*** O     K ***\n");
    else
        printf("***-09**** N   G ****\n");

    pia = &rpia;
    *pia += olia;
    if(*pia == 31)
        printf("***-10*** O     K ***\n");
    else
        printf("***-10**** N   G ****\n");

    vsia += oda;
    if(vsia == 31)
        printf("***-11*** O     K ***\n");
    else
        printf("***-11**** N   G ****\n");

    flta += oib;
    if(flta == 31)
        printf("***-12*** O     K ***\n");
    else
        printf("***-12**** N   G ****\n");

    plda = &rplda;
    *plda -= osib;
    if(*plda == -5)
        printf("***-13*** O     K ***\n");
    else
        printf("***-13**** N   G ****\n");

    vda -= oldb;
    if(vda == -3)
        printf("***-14*** O     K ***\n");
    else
        printf("***-14**** N   G ****\n");

    lib -= ofb;
    if(lib == -1)
        printf("***-15*** O     K ***\n");
    else
        printf("***-15**** N   G ****\n");

    dbla -= occ;
    if(dbla == 1)
        printf("***-16*** O     K ***\n");
    else
        printf("***-16**** N   G ****\n");

    printf("***-17*** O     K ***\n");
    sca <<= ouca;
    if(sca == 0)
        printf("***-18*** O     K ***\n");
    else
        printf("***-18**** N   G ****\n");

    ib >>= olib;
    if(ib == 0)
        printf("***-19*** O     K ***\n");
    else
        printf("***-19**** N   G ****\n");

    ua >>= osli;
    if(ua == 0)
        printf("***-20*** O     K ***\n");
    else
        printf("***-20**** N   G ****\n");

    cc &= osic;
    if(cc == 0)
        printf("***-21*** O     K ***\n");
    else
        printf("***-21**** N   G ****\n");

    lic &= ouia;
    if(lic == 0)
        printf("***-22*** O     K ***\n");
    else
        printf("***-22**** N   G ****\n");

    sa &= ollid;
    if(sa == 0)
        printf("***-23*** O     K ***\n");
    else
        printf("***-23**** N   G ****\n");

    ic ^= ocd;
    if(ic == 31)
        printf("***-24*** O     K ***\n");
    else
        printf("***-24**** N   G ****\n");

    sic ^= osllia;
    if(sic == 31)
        printf("***-25*** O     K ***\n");
    else
        printf("***-25**** N   G ****\n");

    llib ^= osid;
    if(llib == 31)
        printf("***-26*** O     K ***\n");
    else
        printf("***-26**** N   G ****\n");

    lid |= ousia;
    if(lid == 31)
        printf("***-27*** O     K ***\n");
    else
        printf("***-27**** N   G ****\n");

    ssia |= oullia;
    if(ssia == 31)
        printf("***-28*** O     K ***\n");
    else
        printf("***-28**** N   G ****\n");

    cc2 |= ollie;
    if(cc2 == 31)
        printf("***-29*** O     K ***\n");
    else
        printf("***-29**** N   G ****\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
