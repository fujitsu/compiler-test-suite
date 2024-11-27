#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    short int              si    = 10;
    long int               li    = 20;

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

    if(si-ca != 9)
        printf("***\n");

    if(si-ia != 8)
        printf("***\n");

    if(si-sia != 7)
        printf("***\n");

    if(si-lia != 6)
        printf("***\n");

    if(si-llia != 5)
        printf("***\n");


    if(si-sca != 16)
        printf("***\n");

    if(si-usia != 3)
        printf("***\n");

    if(si-10 != 0)
        printf("***\n");

    if(si-si/ia != 5)
        printf("***\n");

    if(li-ca != 19)
        printf("***\n");

    if(li-ia != 18)
        printf("***\n");

    if(li-sia != 17)
        printf("***\n");

    if(li-lia != 16)
        printf("***\n");

    if(li-llia != 15)
        printf("***\n");


    if(li-sca != 26)
        printf("***\n");

    if(li-usia != 13)
        printf("***\n");

    if(li-10 != 10)
        printf("***\n");

    if(li-li/ia != 10)
        printf("***\n");


    if(si-flta != 9.5)
        printf("***\n");

    if(si-dbla != 9.75)
        printf("***\n");

    if(si-ldbla != 9.875)
        printf("***\n");

    if(li-flta != 19.5)
        printf("***\n");

    if(li-dbla != 19.75)
        printf("***\n");

    if(li-ldbla != 19.875)
        printf("***\n");


    printf("\n");

exit (0);
}
