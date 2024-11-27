#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    int                    i     = -32768;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned int           uia   = 7;

    printf("\n");

    if(i>>ca != -16384)
        printf("***\n");

    if(i>>ia != -8192)
        printf("***\n");

    if(i>>sia != -4096)
        printf("***\n");

    if(i>>lia != -2048)
        printf("***\n");

    if(i>>llia != -1024)
        printf("***\n");

    if(i>>sca != -512)
        printf("***\n");

    if(i>>uia != -256)
        printf("***\n");

    if(i>>8 != -128)
        printf("***\n");

    if(i>>sia%ia != -16384)
        printf("***\n");

    if(2>>ca != 1)
        printf("***\n");

    if(4>>ia != 1)
        printf("***\n");

    if(8>>sia != 1)
        printf("***\n");

    if(16>>lia != 1)
        printf("***\n");

    if(32>>llia != 1)
        printf("***\n");

    if(64>>sca != 1)
        printf("***\n");

    if(128>>uia != 1)
        printf("***\n");

    if(256>>8 != 1)
        printf("***\n");

    if(-8>>8-5 != -1)
        printf("***\n");

    if(sizeof(int)>>2 != 1)
        printf("***\n");

    if(ca*ia>>ia != 0)
        printf("***\n");

    if(sia%ia*8>>sia != 1)
        printf("***\n");

    if((int)ca*100/sia>>lia != 2)
        printf("***\n");

    if(!0>>llia%llia != 1)
        printf("***\n");

    if(~0x00000001>>sca != -1)
        printf("***\n");

    if(-1+129>>uia != 1)
        printf("***\n");

    if(!8>>10 != 0)
        printf("***\n");

    if(sizeof(long double)>>1*6/3%4 != 4)
        printf("***\n");

    printf("\n");
exit (0);
}
