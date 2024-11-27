#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    int                    ia    = 64;
    char                   ca    = 1;
    int                    ib    = 2;
    long long int          llia  = 3;
    float                  flta  = 0.125;
    long double            ldbla = 0.0625;
    signed short int       ssia  = -4;
    unsigned long int      ulia  = 5;
    char                   cb    = 6;
    int                    cc    = 7;
    short int              sia   = 8;
    long int               lia   = 9;
    long long int          llib  = 10;
    double                 dbla  = 0.03125;
    signed char            sca   = -11;
    unsigned int           uia   = 12;
    char                   cd    = 13;
    int                    ic    = 14;
    short int              sib   = 15;
    long int               lib   = 16;
    long long int          llic  = 17;
    signed long long int   sllia = -18;
    unsigned short int     usia  = 19;


    printf("\n");

    if(ia*ca != 64)
        printf("***\n");

    if(ia*ib != 128)
        printf("***\n");

    if(ia*llia != 192)
        printf("***\n");


    if(ia*ssia != -256)
        printf("***\n");

    if(ia*ulia != 320)
        printf("***\n");

    if(ia*6 != 384)
        printf("***\n");

    if(ia*(int)ca != 64)
        printf("***\n");

    if(ia/cb != 10)
        printf("***\n");

    if(ia/cc != 9)
        printf("***\n");

    if(ia/sia != 8)
        printf("***\n");

    if(ia/lia != 7)
        printf("***\n");

    if(ia/llib != 6)
        printf("***\n");


    if(ia/sca != -5)
        printf("***\n");

    if(ia/uia != 5)
        printf("***\n");

    if(ia/13 != 4)
        printf("***\n");

    if(ia/(long long int)cb != 10)
        printf("***\n");

    if(ia%cd != 12)
        printf("***\n");

    if(ia%ic != 8)
        printf("***\n");

    if(ia%sib != 4)
        printf("***\n");

    if(ia%lib != 0)
        printf("***\n");

    if(ia%llic != 13)
        printf("***\n");

    if(ia%sllia != 10)
        printf("***\n");

    if(ia%usia != 7)
        printf("***\n");

    if(ia%20 != 4)
        printf("***\n");

    if(ia%(signed char)cd != 12)
        printf("***\n");


    if(ia*flta != 8)
        printf("***\n");

    if(ia*ldbla != 4)
        printf("***\n");

    if(ia/dbla != 2048)
        printf("***\n");


    printf("\n");
exit (0);
}
