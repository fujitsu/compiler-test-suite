#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    double                 dbl   = 10;
    long double            ldbl  = 20;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    float                  flta  = .5;
    double                 dbla  = .25;
    long double            ldbla = .125;
    signed char            sca   = -6;
    unsigned short int     usia  = 7;

    printf("\n");

    if(dbl-ca != 9)
        printf("***\n");

    if(dbl-ia != 8)
        printf("***\n");

    if(dbl-sia != 7)
        printf("***\n");

    if(dbl-lia != 6)
        printf("***\n");

    if(dbl-llia != 5)
        printf("***\n");

    if(dbl-flta != 9.5)
        printf("***\n");

    if(dbl-dbla != 9.75)
        printf("***\n");

    if(dbl-ldbla != 9.875)
        printf("***\n");

    if(dbl-sca != 16)
        printf("***\n");

    if(dbl-usia != 3)
        printf("***\n");

    if(dbl-10 != 0)
        printf("***\n");

    if(dbl-sizeof(dbl)%sia != 8)
        printf("***\n");

    if(ldbl-ca != 19)
        printf("***\n");

    if(ldbl-ia != 18)
        printf("***\n");

    if(ldbl-sia != 17)
        printf("***\n");

    if(ldbl-lia != 16)
        printf("***\n");

    if(ldbl-llia != 15)
        printf("***\n");

    if(ldbl-flta != 19.5)
        printf("***\n");

    if(ldbl-dbla != 19.75)
        printf("***\n");

    if(ldbl-ldbla != 19.875)
        printf("***\n");

    if(ldbl-sca != 26)
        printf("***\n");

    if(ldbl-usia != 13)
        printf("***\n");

    if(ldbl-10 != 10)
        printf("***\n");

    if(ldbl-sizeof(ldbl)%sia != 19)
        printf("***\n");

    printf("\n");
exit (0);
}
