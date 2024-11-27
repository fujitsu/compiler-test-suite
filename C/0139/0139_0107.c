#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    signed char            sc    = 1;
    signed int             si    = 2;
    signed short int       ssi   = 3;
    signed long int        sli   = 4;
    signed long long int   slli  = 5;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    float                  flta  = .5;
    double                 dbla  = .25;
    long double            ldbla = .125;
    signed short int       ssia  = -6;
    unsigned int           uia   = 7;
    volatile long long int *pvllia;
    volatile long long int rvllia = 8;
    char                   *pca;
    char                   rca   = 9;

    printf("\n");

    if(sc+ca != 2)
        printf("***\n");

    if(si+ia != 4)
        printf("***\n");

    if(ssi+sia != 6)
        printf("***\n");

    if(sli+lia != 8)
        printf("***\n");

    if(slli+llia != 10)
        printf("***\n");

    if(sc+flta != 1.5)
        printf("***\n");

    if(si+dbla != 2.25)
        printf("***\n");

    if(ssi+ldbla != 3.125)
        printf("***\n");

    if(sli+ssia != -2)
        printf("***\n");

    if(slli+uia != 12)
        printf("***\n");

    pvllia = &rvllia;
    if(sc+*pvllia != 9)
        printf("***\n");

    pca = &rca;
    if(si+*pca != 11)
        printf("***\n");

    if(ssi+10 != 13)
        printf("***\n");

    if(sli+ca+++ia != 7)
        printf("***\n");

    printf("\n");
exit (0);
}
