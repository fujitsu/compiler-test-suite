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
    int                    arr[10] = { 0,1,2,3,4,5,6,7,8,9 };

    printf("\n");

    if(++ca+1+ca != 5)
        printf("***\n");

    if(--ca-1+ia != 2)
        printf("***\n");

    if(+sia+sia != 6)
        printf("***\n");

    if(-lia+lia != 0)
        printf("***\n");

    if(~llia+llia != -1)
        printf("***\n");


    if(ssia*ssia+ssia != 30)
        printf("***\n");

    if(uia/uia+uia != 8)
        printf("***\n");

    pvllia = &rvllia;
    if(10%*pvllia+*pvllia != 10)
        printf("***\n");

    pca = &rca;
    if(++*pca+*pca != 20)
        printf("***\n");

    if(arr[2]+10 != 12)
        printf("***\n");

    if(++arr[5]+--arr[3] != 8)
        printf("***\n");


    if(!flta+flta != 0.5)
        printf("***\n");

    if((int)dbla+dbla != 0.25)
        printf("***\n");

    if((signed short int)ldbla+ldbla != .125)
        printf("***\n");


    printf("\n");
exit (0);
}
