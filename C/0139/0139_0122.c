#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
#ifndef nollint
    long long int          lli   = 2147483648;
#endif
    signed short int       ssi   = 32767;
    unsigned long int      uli   = 2147483647;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
#ifndef nollint
    long long int          llia  = 5;
#endif
    signed char            sca   = 6;
    unsigned int           uia   = 7;

    printf("\n");

#ifndef nollint
    if(lli>>ca != 1073741824)
        printf("***\n");

    if(lli>>ia != 536870912)
        printf("***\n");

    if(lli>>sia != 268435456)
        printf("***\n");

    if(lli>>lia != 134217728)
        printf("***\n");

    if(lli>>llia != 67108864)
        printf("***\n");

    if(lli>>sca != 33554432)
        printf("***\n");

    if(lli>>uia != 16777216)
        printf("***\n");

    if(lli>>31 != 1)
        printf("***\n");

    if(lli>>ia*sia/llia != 1073741824)
        printf("***\n");
#endif

    if(ssi>>ca != 16383)
        printf("***\n");

    if(ssi>>ia != 8191)
        printf("***\n");

    if(ssi>>sia != 4095)
        printf("***\n");

    if(ssi>>lia != 2047)
        printf("***\n");

#ifndef nollint
    if(ssi>>llia != 1023)
        printf("***\n");
#endif

    if(ssi>>sca != 511)
        printf("***\n");

    if(ssi>>uia != 255)
        printf("***\n");

    if(ssi>>8 != 127)
        printf("***\n");

    if(ssi>>sizeof(ia) != 2047)
        printf("***\n");

    if(uli>>ca != 1073741823)
        printf("***\n");

    if(uli>>ia != 536870911)
        printf("***\n");

    if(uli>>sia != 268435455)
        printf("***\n");

    if(uli>>lia != 134217727)
        printf("***\n");

#ifndef nollint
    if(uli>>llia != 67108863)
        printf("***\n");
#endif

    if(uli>>sca != 33554431)
        printf("***\n");

    if(uli>>uia != 16777215)
        printf("***\n");

    if(uli>>8 != 8388607)
        printf("***\n");

    if(uli>>ca>>ia>>sia != 33554431)
        printf("***\n");

    printf("\n");
exit (0);
}
