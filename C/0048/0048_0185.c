#include <stdio.h>
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

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(sc-ca != 1)
        printf("***-01*** N   G ***\n");

    if(si-ia != 2)
        printf("***-02*** N   G ***\n");

    if(ssi-sia != 5)
        printf("***-03*** N   G ***\n");

    if(sli-lia != 12)
        printf("***-04*** N   G ***\n");

#ifndef nollint
    if(slli-llia != 27)
        printf("***-05*** N   G ***\n");
#endif

    if(sc-flta != 1.5)
        printf("***-06*** N   G ***\n");

    if(si-dbla != 3.75)
        printf("***-07*** N   G ***\n");

    if(ssi-ldbla != 7.875)
        printf("***-08*** N   G ***\n");

    if(sli-sca != 22)
        printf("***-09*** N   G ***\n");

#ifndef nollint
    if(slli-usia != 25)
        printf("***-10*** N   G ***\n");
#endif

    if(sc-10 != -8)
        printf("***-11*** N   G ***\n");

    if(si-sizeof(double)/sia != 2)
        printf("***-12*** N   G ***\n");

    if(uc-ca != 63)
        printf("***-13*** N   G ***\n");

    if(ui-ia != 126)
        printf("***-14*** N   G ***\n");

    if(usi-sia != 253)
        printf("***-15*** N   G ***\n");

    if(uli-lia != 508)
        printf("***-16*** N   G ***\n");

#ifndef nollint
    if(ulli-llia != 1019)
        printf("***-17*** N   G ***\n");
#endif

    if(uc-flta != 63.5)
        printf("***-18*** N   G ***\n");

    if(ui-dbla != 127.75)
        printf("***-19*** N   G ***\n");

    if(usi-ldbla != 255.875)
        printf("***-20*** N   G ***\n");

    if(uli-sca != 518)
        printf("***-21*** N   G ***\n");

#ifndef nollint
    if(ulli-usia != 1017)
        printf("***-22*** N   G ***\n");
#endif

    if(uc-10 != 54)
        printf("***-23*** N   G ***\n");

#if __NO_LONGDOUBLE
    if(ui-sizeof(long double)*sia != 104)
#elif __R12 || __i386
    if(ui-sizeof(long double)*sia != 92)
#else
    if(ui-sizeof(long double)*sia != 80)
#endif
        printf("***-24*** N   G ***\nui-sizeof(long double)*sia:%d\n",
	ui-sizeof(long double)*sia);

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
