#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    unsigned char          c     = 255;
    int                    i     = -2147483648;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned int           uia   = 7;

    printf("\n");

    if(c>>ca != 127)
        printf("***\n");

    if(c>>ia != 63)
        printf("***\n");

    if(c>>sia != 31)
        printf("***\n");

    if(c>>lia != 15)
        printf("***\n");

    if(c>>llia != 7)
        printf("***\n");

    if(c>>sca != 3)
        printf("***\n");

    if(c>>uia != 1)
        printf("***\n");

    if(c>>8 != 0)
        printf("***\n");

    if(c>>ca+1 != 63)
        printf("***\n");

    if(i>>ca != -1073741824)
        printf("***\n");

    if(i>>ia != -536870912)
        printf("***\n");

    if(i>>sia != -268435456)
        printf("***\n");

    if(i>>lia != -134217728)
        printf("***\n");

    if(i>>llia != -67108864)
        printf("***\n");

    if(i>>sca != -33554432)
        printf("***\n");

    if(i>>uia != -16777216)
        printf("***\n");

    if(i>>28 != -8)
        printf("***\n");

    if(i>>i/-2000000000 != -1073741824)
        printf("***\n");

    printf("\n");
exit (0);
}
