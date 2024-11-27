#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    short int              sia   = 128;
    char                   ca    = 1;
    int                    ib    = 2;
    short int              siab  = 3;
    long long int          llia  = 4;
    float                  flta  = 0.5;
    long double            ldbla = 0.25;
    signed long int        slia  = -5;
    unsigned char          uca   = 6;
    char                   cb    = 7;
    short int              sib   = 8;
    long int               lia   = 9;
    long long int          llib  = 10;
    double                 dbla  = 0.03125;
    signed char            sca   = -11;
    unsigned int           uia   = 12;
    char                   cc    = 13;
    int                    ic    = 14;
    short int              sic   = 15;
    long int               lib   = 16;
    long long int          llic  = 17;
    signed long long int   sllia = -18;
    unsigned short int     usia  = 19;


    printf("\n");

    if(sia*ca != 128)
        printf("***\n");

    if(sia*ib != 256)
        printf("***\n");

    if(sia*siab != 384)
        printf("***\n");

    if(sia*llia != 512)
        printf("***\n");


    if(sia*slia != -640)
        printf("***\n");

    if(sia*uca != 768)
        printf("***\n");

    if(sia*128 != 16384)
        printf("***\n");

    if(sia*(int)ca != 128)
        printf("***\n");

    if(sia/cb != 18)
        printf("***\n");

    if(sia/sib != 16)
        printf("***\n");

    if(sia/lia != 14)
        printf("***\n");

    if(sia/llib != 12)
        printf("***\n");


    if(sia/sca != -11)
        printf("***\n");

    if(sia/uia != 10)
        printf("***\n");

    if(sia/13 != 9)
        printf("***\n");

    if(sia/(long long int)cb != 18)
        printf("***\n");

    if(sia%cc != 11)
        printf("***\n");

    if(sia%ic != 2)
        printf("***\n");

    if(sia%sic != 8)
        printf("***\n");

    if(sia%lib != 0)
        printf("***\n");

    if(sia%llic != 9)
        printf("***\n");

    if(sia%sllia != 2)
        printf("***\n");

    if(sia%usia != 14)
        printf("***\n");

    if(sia%20 != 8)
        printf("***\n");

    if(sia%(signed char)cc != 11)
        printf("***\n");


    if(sia*flta != 64)
        printf("***\n");

    if(sia*ldbla != 32)
        printf("***\n");

    if(sia/dbla != 4096)
        printf("***\n");


    printf("\n");
exit (0);
}
