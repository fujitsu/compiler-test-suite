#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

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

    printf("\n");

    ca *= oia;
    if(ca = 30)
        printf("***\n");
    else
        printf("***\n");

    llia *= olda;
    if(llia == 58)
        printf("***\n");
    else
        printf("***\n");

    usia *= osa;
    if(usia == 84)
        printf("***\n");
    else
        printf("***\n");

    ia /= ofa;
    if(ia == 0)
        printf("***\n");
    else
        printf("***\n");

    sia /= oca;
    if(sia == 0)
        printf("***\n");
    else
        printf("***\n");

    slia /= ollia;
    if(slia == 0)
        printf("***\n");
    else
        printf("***\n");

    lia %= osia;
    if(lia == 7)
        printf("***\n");
    else
        printf("***\n");

    cb %= ollib;
    if(cb == 8)
        printf("***\n");
    else
        printf("***\n");

    ullia %= ocb;
    if(ullia == 9)
        printf("***\n");
    else
        printf("***\n");

    pia = &rpia;
    *pia += olia;
    if(*pia == 31)
        printf("***\n");
    else
        printf("***\n");

    vsia += oda;
    if(vsia == 31)
        printf("***\n");
    else
        printf("***\n");

    flta += oib;
    if(flta == 31)
        printf("***\n");
    else
        printf("***\n");

    plda = &rplda;
    *plda -= osib;
    if(*plda == -5)
        printf("***\n");
    else
        printf("***\n");

    vda -= oldb;
    if(vda == -3)
        printf("***\n");
    else
        printf("***\n");

    lib -= ofb;
    if(lib == -1)
        printf("***\n");
    else
        printf("***\n");

    dbla -= occ;
    if(dbla == 1)
        printf("***\n");
    else
        printf("***\n");

        printf("***\n");
    sca <<= ouca;
    if(sca == 0)
        printf("***\n");
    else
        printf("***\n");

    ib >>= olib;
    if(ib == 0)
        printf("***\n");
    else
        printf("***\n");

    ua >>= osli;
    if(ua == 0)
        printf("***\n");
    else
        printf("***\n");

    cc &= osic;
    if(cc == 0)
        printf("***\n");
    else
        printf("***\n");

    lic &= ouia;
    if(lic == 0)
        printf("***\n");
    else
        printf("***\n");

    sa &= ollid;
    if(sa == 0)
        printf("***\n");
    else
        printf("***\n");

    ic ^= ocd;
    if(ic == 31)
        printf("***\n");
    else
        printf("***\n");

    sic ^= osllia;
    if(sic == 31)
        printf("***\n");
    else
        printf("***\n");

    llib ^= osid;
    if(llib == 31)
        printf("***\n");
    else
        printf("***\n");

    lid |= ousia;
    if(lid == 31)
        printf("***\n");
    else
        printf("***\n");

    ssia |= oullia;
    if(ssia == 31)
        printf("***\n");
    else
        printf("***\n");

    cc2 |= ollie;
    if(cc2 == 31)
        printf("***\n");
    else
        printf("***\n");

    printf("\n");
exit (0);
}
