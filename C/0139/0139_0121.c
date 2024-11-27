#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    short int              si    = 32767;
    long int               li    = 65535;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned int           uia   = 7;

    printf("\n");

    if(si>>ca != 16383)
        printf("***\n");

    if(si>>ia != 8191)
        printf("***\n");

    if(si>>sia != 4095)
        printf("***\n");

    if(si>>lia != 2047)
        printf("***\n");

    if(si>>llia != 1023)
        printf("***\n");

    if(si>>sca != 511)
        printf("***\n");

    if(si>>uia != 255)
        printf("***\n");

    if(si>>8 != 127)
        printf("***\n");

    if(si>>li/si+1 != 4095)
        printf("***\n");

    if(li>>ca != 32767)
        printf("***\n");

    if(li>>ia != 16383)
        printf("***\n");

    if(li>>sia != 8191)
        printf("***\n");

    if(li>>lia != 4095)
        printf("***\n");

    if(li>>llia != 2047)
        printf("***\n");

    if(li>>sca != 1023)
        printf("***\n");

    if(li>>uia != 511)
        printf("***\n");

    if(li>>8 != 255)
        printf("***\n");

    if(li>>sia%ia != 32767)
        printf("***\n");

    printf("\n");
exit (0);
}
