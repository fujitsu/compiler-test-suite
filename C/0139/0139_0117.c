#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

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


    printf("\n");

    pvi = &rvi;
    if(*pvi-ca != 9)
        printf("***\n");

    if(*pvi-ia != 8)
        printf("***\n");

    if(*pvi-sia != 7)
        printf("***\n");

    if(*pvi-lia != 6)
        printf("***\n");

    if(*pvi-llia != 5)
        printf("***\n");

    if(*pvi-sca != 16)
        printf("***\n");

    if(*pvi-usia != 3)
        printf("***\n");

    pvia = &rvia;
    if(*pvi-*pvia != 2)
        printf("***\n");

    pi = &rpi;
    if(*pvi-*pi != 1)
        printf("***\n");

    if(*pvi-10 != 0)
        printf("***\n");

    if(*pvi-sizeof(*pvi)/sia != 9)
        printf("***\n");


    plli = &rlli;
    if(*plli-ca != 31)
        printf("***\n");

    if(*plli-ia != 30)
        printf("***\n");

    if(*plli-sia != 29)
        printf("***\n");

    if(*plli-lia != 28)
        printf("***\n");

    if(*plli-llia != 27)
        printf("***\n");

    if(*plli-sca != 38)
        printf("***\n");

    if(*plli-usia != 25)
        printf("***\n");

    pclli = &rclli;
    if(*plli-*pclli != 22)
        printf("***\n");

    pllia = &rllia;
    if(*plli-*pllia != 21)
        printf("***\n");

    if(*plli-10 != 22)
        printf("***\n");

#ifndef nollint
    if(*plli-sizeof(*plli)/sia != 30)
        printf("***\n");
#else
    if(*plli-sizeof(*plli)/sia != 31)
        printf("***\n");
#endif

    printf("\n");
exit (0);
}
