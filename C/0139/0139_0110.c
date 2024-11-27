#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
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

    if(1+ca != 2)
        printf("***\n");

    if(-1+ia != 1)
        printf("***\n");

    if(256.f+sia != 259)
        printf("***\n");

    if(.5+lia != 4.5)
        printf("***\n");

    if(10l+llia != 15)
        printf("***\n");


    if(-.5+ssia != -6.5)
        printf("***\n");

    if(2147483647+uia != 2147483654)
        printf("***\n");


    pca = &rca;
    if(010+*pca != 17)
        printf("***\n");

    if(0xff+10 != 265)
        printf("***\n");

    if(1.5+ca+++ia != 4.5)
        printf("***\n");


    if(5ul+flta != 5.5)
        printf("***\n");

    if(1e2+dbla != 100.25)
        printf("***\n");

    if(-10+ldbla != -9.875)
        printf("***\n");

    pvllia = &rvllia;
    if(100e-2+*pvllia != 9)
        printf("***\n");

    printf("\n");

exit (0);
}
