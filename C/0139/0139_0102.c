#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    int                    i     = 1;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    float                  flta  = .5;
    double                 dbla  = .25;
    long double            ldbla = .125;
    signed long int        slia  = -6;
    unsigned long long int ullia = 7;
    const short int        *pcsia;
    const short int        rcsia = 8;
    long int               *plia;
    long int               rlia  = 9;

    printf("\n");

    if(i+ca != 2)
        printf("***\n");

    if(i+ia != 3)
        printf("***\n");

    if(i+sia != 4)
        printf("***\n");

    if(i+lia != 5)
        printf("***\n");

    if(i+llia != 6)
        printf("***\n");

    if(i+flta != 1.5)
        printf("***\n");

    if(i+dbla != 1.25)
        printf("***\n");

    if(i+ldbla != 1.125)
        printf("***\n");

    if(i+slia != -5)
        printf("***\n");

    if(i+ullia != 8)
        printf("***\n");

    pcsia = &rcsia;
    if(i+*pcsia != 9)
        printf("***\n");

    plia = &rlia;
    if(i+*plia != 10)
        printf("***\n");

    if(i+10 != 11)
        printf("***\n");

    if(i+i/ca != 2)
        printf("***\n");

    printf("\n");
exit (0);
}
