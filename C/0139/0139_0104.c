#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    long int               li    = 1;

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

    if(li+ca != 2)
        printf("***\n");

    if(li+ia != 3)
        printf("***\n");

    if(li+sia != 4)
        printf("***\n");

    if(li+lia != 5)
        printf("***\n");

    if(li+llia != 6)
        printf("***\n");

    if(li+flta != 1.5)
        printf("***\n");

    if(li+dbla != 1.25)
        printf("***\n");

    if(li+ldbla != 1.125)
        printf("***\n");

    if(li+ssia != -5)
        printf("***\n");

    if(li+uia != 8)
        printf("***\n");

    pvllia = &rvllia;
    if(li+*pvllia != 9)
        printf("***\n");

    pca = &rca;
    if(li+*pca != 10)
        printf("***\n");

    if(li+10 != 11)
        printf("***\n");

    if(li+ca%sizeof(ia) != 2)
        printf("***\n");

    printf("\n");
exit (0);
}
