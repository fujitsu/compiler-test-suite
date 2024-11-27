#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    long long int          lli   = 10;
    float                  flt   = 20;

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

    if(lli-ca != 9)
        printf("***\n");

    if(lli-ia != 8)
        printf("***\n");

    if(lli-sia != 7)
        printf("***\n");

    if(lli-lia != 6)
        printf("***\n");

    if(lli-llia != 5)
        printf("***\n");


    if(lli-sca != 16)
        printf("***\n");

    if(lli-usia != 3)
        printf("***\n");

    if(lli-10 != 0)
        printf("***\n");

    if(lli-lli%ia != 10)
        printf("***\n");

    if(flt-ca != 19)
        printf("***\n");

    if(flt-ia != 18)
        printf("***\n");

    if(flt-sia != 17)
        printf("***\n");

    if(flt-lia != 16)
        printf("***\n");

    if(flt-llia != 15)
        printf("***\n");


    if(flt-sca != 26)
        printf("***\n");

    if(flt-usia != 13)
        printf("***\n");

    if(flt-10 != 10)
        printf("***\n");


    if(lli-flta != 9.5)
        printf("***\n");

    if(lli-dbla != 9.75)
        printf("***\n");

    if(lli-ldbla != 9.875)
        printf("***\n");

    if(flt-flta != 19.5)
        printf("***\n");

    if(flt-dbla != 19.75)
        printf("***\n");

    if(flt-ldbla != 19.875)
        printf("***\n");


    printf("\n");

exit (0);
}
