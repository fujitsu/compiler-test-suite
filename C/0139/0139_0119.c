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
    int                    arr[10] = { 0,1,2,3,4,5,6,7,8,9 };

    printf("\n");

    if(++ca-1-ca != -1)
        printf("***\n");

    if(--ca+1-ia != 0)
        printf("***\n");

    if(-sia-sia != -6)
        printf("***\n");

    if(+lia-lia != 0)
        printf("***\n");

    if(~llia-llia != -11)
        printf("***\n");

    if(!flta-flta != -0.5)
        printf("***\n");

    if((int)dbla-dbla != -0.25)
        printf("***\n");

    if((signed short int)ldbla-ldbla != -.125)
        printf("***\n");

    if(ssia*ssia-ssia != 42)
        printf("***\n");

    if(uia/uia-uia != -6)
        printf("***\n");

    if(arr[2]-10 != -8)
        printf("***\n");

    if(++arr[5]- --arr[3] != 4)
        printf("***\n");

    if(*((arr+10)-1) != 9)
        printf("***\n");

    printf("\n");
exit (0);
}
