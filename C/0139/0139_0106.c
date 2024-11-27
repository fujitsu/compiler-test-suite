#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    float                  flt   = 0.5;
    double                 dbl   = 0.25;
    long double            ldbl  = 0.125;

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

    printf("\n");

    if(flt+ca != 1.5)
        printf("***\n");

    if(flt+ia != 2.5)
        printf("***\n");

    if(flt+sia != 3.5)
        printf("***\n");

    if(flt+lia != 4.5)
        printf("***\n");

    if(flt+llia != 5.5)
        printf("***\n");

    if(flt+flta != 1.0)
        printf("***\n");

    if(flt+dbla != 0.75)
        printf("***\n");

    if(flt+ldbla != 0.625)
        printf("***\n");

    if(flt+ssia != -5.5)
        printf("***\n");

    if(flt+uia != 7.5)
        printf("***\n");

    if(flt+10 != 10.5)
        printf("***\n");

    if(flt+ca--+ia != 3.5)
        printf("***\n");
    ca++;

    if(dbl+ca != 1.25)
        printf("***\n");

    if(dbl+ia != 2.25)
        printf("***\n");

    if(dbl+sia != 3.25)
        printf("***\n");

    if(dbl+lia != 4.25)
        printf("***\n");

    if(dbl+llia != 5.25)
        printf("***\n");

    if(dbl+flta != 0.75)
        printf("***\n");

    if(dbl+dbla != 0.5)
        printf("***\n");

    if(dbl+ldbla != 0.375)
        printf("***\n");

    if(dbl+ssia != -5.75)
        printf("***\n");

    if(dbl+uia != 7.25)
        printf("***\n");

    if(dbl+10 != 10.25)
        printf("***\n");

    if(dbl+ca+!ia != 1.25)
        printf("***\n");

    if(ldbl+ca != 1.125)
        printf("***\n");

    if(ldbl+ia != 2.125)
        printf("***\n");

    if(ldbl+sia != 3.125)
        printf("***\n");

    if(ldbl+lia != 4.125)
        printf("***\n");

    if(ldbl+llia != 5.125)
        printf("***\n");

    if(ldbl+flta != 0.625)
        printf("***\n");

    if(ldbl+dbla != 0.375)
        printf("***\n");

    if(ldbl+ldbla != 0.25)
        printf("***\n");

    if(ldbl+ssia != -5.875)
        printf("***\n");

    if(ldbl+uia != 7.125)
        printf("***\n");

    if(ldbl+10 != 10.125)
        printf("***\n");

    if(ldbl+sizeof(int) != 4.125)
        printf("***\n");

    printf("\n");
exit (0);
}
