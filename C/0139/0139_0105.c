#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    long long int          lli   = 1;

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

    if(lli+ca != 2)
        printf("***\n");

    if(lli+ia != 3)
        printf("***\n");

    if(lli+sia != 4)
        printf("***\n");

    if(lli+lia != 5)
        printf("***\n");

    if(lli+llia != 6)
        printf("***\n");

    if(lli+flta != 1.5)
        printf("***\n");

    if(lli+dbla != 1.25)
        printf("***\n");

    if(lli+ldbla != 1.125)
        printf("***\n");

    if(lli+ssia != -5)
        printf("***\n");

    if(lli+uia != 8)
        printf("***\n");

    pvllia = &rvllia;
    if(lli+*pvllia != 9)
        printf("***\n");

    pca = &rca;
    if(lli+*pca != 10)
        printf("***\n");

    if(lli+10 != 11)
        printf("***\n");

    if(lli+ca+++ia != 4)
        printf("***\n");

    printf("\n");
exit (0);
}
