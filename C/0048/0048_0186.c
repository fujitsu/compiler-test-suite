#include <stdio.h>
int main()
{
    volatile int           *pvi;
    volatile int           rvi   = 10;

    long long int          *plli;
    long long int          rlli  = 32;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = -6;
    unsigned short int     usia  = 7;

    volatile int           *pvia;
    volatile int           rvia  = 8;
    int                    *pi;
    int                    rpi   = 9;

    const long long int    *pclli;
    const long long int    rclli = 10;
    long long int          *pllia;
    long long int          rllia = 11;


    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    pvi = &rvi;
    if(*pvi-ca != 9)
        printf("***-01*** N   G ***\n");

    if(*pvi-ia != 8)
        printf("***-02*** N   G ***\n");

    if(*pvi-sia != 7)
        printf("***-03*** N   G ***\n");

    if(*pvi-lia != 6)
        printf("***-04*** N   G ***\n");

    if(*pvi-llia != 5)
        printf("***-05*** N   G ***\n");

    if(*pvi-sca != 16)
        printf("***-06*** N   G ***\n");

    if(*pvi-usia != 3)
        printf("***-07*** N   G ***\n");

    pvia = &rvia;
    if(*pvi-*pvia != 2)
        printf("***-08*** N   G ***\n");

    pi = &rpi;
    if(*pvi-*pi != 1)
        printf("***-09*** N   G ***\n");

    if(*pvi-10 != 0)
        printf("***-10*** N   G ***\n");

    if(*pvi-sizeof(*pvi)/sia != 9)
        printf("***-11*** N   G ***\n");


    plli = &rlli;
    if(*plli-ca != 31)
        printf("***-12*** N   G ***\n");

    if(*plli-ia != 30)
        printf("***-13*** N   G ***\n");

    if(*plli-sia != 29)
        printf("***-14*** N   G ***\n");

    if(*plli-lia != 28)
        printf("***-15*** N   G ***\n");

    if(*plli-llia != 27)
        printf("***-16*** N   G ***\n");

    if(*plli-sca != 38)
        printf("***-17*** N   G ***\n");

    if(*plli-usia != 25)
        printf("***-18*** N   G ***\n");

    pclli = &rclli;
    if(*plli-*pclli != 22)
        printf("***-19*** N   G ***\n");

    pllia = &rllia;
    if(*plli-*pllia != 21)
        printf("***-20*** N   G ***\n");

    if(*plli-10 != 22)
        printf("***-21*** N   G ***\n");

#ifndef _NO_LONGLONG
    if(*plli-sizeof(*plli)/sia != 30)
        printf("***-22*** N   G ***\n");
#else
    if(*plli-sizeof(*plli)/sia != 31)
        printf("***-22*** N   G ***\n");
#endif

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
