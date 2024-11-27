#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    char                   c     = 10;
    int                    i     = 20;

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

    if(c-ca != 9)
        printf("***\n");

    if(c-ia != 8)
        printf("***\n");

    if(c-sia != 7)
        printf("***\n");

    if(c-lia != 6)
        printf("***\n");

    if(c-llia != 5)
        printf("***\n");


    if(c-sca != 16)
        printf("***\n");

    if(c-usia != 3)
        printf("***\n");

    if(c-10 != 0)
        printf("***\n");

    if(c-c*ia != -10)
        printf("***\n");

    if(i-ca != 19)
        printf("***\n");

    if(i-ia != 18)
        printf("***\n");

    if(i-sia != 17)
        printf("***\n");

    if(i-lia != 16)
        printf("***\n");

    if(i-llia != 15)
        printf("***\n");


    if(i-sca != 26)
        printf("***\n");

    if(i-usia != 13)
        printf("***\n");

    if(i-10 != 10)
        printf("***\n");

    if(i-c*ia != 0)
        printf("***\n");


    if(c-flta != 9.5)
        printf("***\n");

    if(c-dbla != 9.75)
        printf("***\n");

    if(c-ldbla != 9.875)
        printf("***\n");

    if(i-flta != 19.5)
        printf("***\n");

    if(i-dbla != 19.75)
        printf("***\n");

    if(i-ldbla != 19.875)
        printf("***\n");


    printf("\n");
exit (0);
}
