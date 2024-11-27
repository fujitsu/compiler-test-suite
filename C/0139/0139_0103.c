#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    short int              si    = 1;

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

    if(si+ca != 2)
        printf("***\n");

    if(si+ia != 3)
        printf("***\n");

    if(si+sia != 4)
        printf("***\n");

    if(si+lia != 5)
        printf("***\n");

    if(si+llia != 6)
        printf("***\n");

    if(si+flta != 1.5)
        printf("***\n");

    if(si+dbla != 1.25)
        printf("***\n");

    if(si+ldbla != 1.125)
        printf("***\n");

    if(si+ssia != -5)
        printf("***\n");

    if(si+uia != 8)
        printf("***\n");

    pvllia = &rvllia;
    if(si+*pvllia != 9)
        printf("***\n");

    pca = &rca;
    if(si+*pca != 10)
        printf("***\n");

    if(si+10 != 11)
        printf("***\n");

    if(si+ca%ia != 2)
        printf("***\n");

    printf("\n");
exit (0);
}
