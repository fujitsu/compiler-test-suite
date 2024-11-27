#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    signed char            sc    = 2;
    signed int             si    = 4;
    signed short int       ssi   = 8;
    signed long int        sli   = 16;
#ifndef nollint
    signed long long int   slli  = 32;
#endif

    unsigned char          uc    = 64;
    unsigned int           ui    = 128;
    unsigned short int     usi   = 256;
    unsigned long int      uli   = 512;
#ifndef nollint
    unsigned long long int ulli  = 1024;
#endif

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
#ifndef nollint
    long long int          llia  = 5;
#endif
    float                  flta  = .5;
    double                 dbla  = .25;
    long double            ldbla = .125;
    signed char            sca   = -6;
    unsigned short int     usia  = 7;

    printf("\n");

    if(sc-ca != 1)
        printf("***\n");

    if(si-ia != 2)
        printf("***\n");

    if(ssi-sia != 5)
        printf("***\n");

    if(sli-lia != 12)
        printf("***\n");

#ifndef nollint
    if(slli-llia != 27)
        printf("***\n");
#endif

    if(sc-flta != 1.5)
        printf("***\n");

    if(si-dbla != 3.75)
        printf("***\n");

    if(ssi-ldbla != 7.875)
        printf("***\n");

    if(sli-sca != 22)
        printf("***\n");

#ifndef nollint
    if(slli-usia != 25)
        printf("***\n");
#endif

    if(sc-10 != -8)
        printf("***\n");

    if(si-sizeof(double)/sia != 2)
        printf("***\n");

    if(uc-ca != 63)
        printf("***\n");

    if(ui-ia != 126)
        printf("***\n");

    if(usi-sia != 253)
        printf("***\n");

    if(uli-lia != 508)
        printf("***\n");

#ifndef nollint
    if(ulli-llia != 1019)
        printf("***\n");
#endif

    if(uc-flta != 63.5)
        printf("***\n");

    if(ui-dbla != 127.75)
        printf("***\n");

    if(usi-ldbla != 255.875)
        printf("***\n");

    if(uli-sca != 518)
        printf("***\n");

#ifndef nollint
    if(ulli-usia != 1017)
        printf("***\n");
#endif

    if(uc-10 != 54)
        printf("***\n");

    if(ui-sizeof(long double)*sia != 80)
        printf("***\n");

    printf("\n");
exit (0);
}
