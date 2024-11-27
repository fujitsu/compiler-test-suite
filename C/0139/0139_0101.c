#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    char                   c     = 1;

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
    volatile int           *pvia;
    volatile int           rvia  = 8;
    long long int          *pllia;
    long long int          rllia = 9;

    printf("\n");

    if(c+ca != 2)
        printf("***\n");

    if(c+ia != 3)
        printf("***\n");

    if(c+sia != 4)
        printf("***\n");

    if(c+lia != 5)
        printf("***\n");

    if(c+llia != 6)
        printf("***\n");

    if(c+flta != 1.5)
        printf("***\n");

    if(c+dbla != 1.25)
        printf("***\n");

    if(c+ldbla != 1.125)
        printf("***\n");

    if(c+sca != -5)
        printf("***\n");

    if(c+usia != 8)
        printf("***\n");

    pvia = &rvia;
    if(c+*pvia != 9)
        printf("***\n");

    pllia = &rllia;
    if(c+*pllia != 10)
        printf("***\n");

    if(c+10 != 11)
        printf("***\n");

    if(c+c*ia != 3)
        printf("***\n");

    printf("\n");
exit (0);
}
