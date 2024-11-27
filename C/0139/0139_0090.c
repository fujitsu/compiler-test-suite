#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    char                   ca    =32;
    int                    ia    =2;
    long long int          llia  =4;
    double                 dbla  =8;
    signed short int       ssia  =16;
    unsigned long int      ulia  =32;
    short int              sia   =64;
    float                  flta  =0.5;
    long double            ldbla =0.25;
    signed char            sca   =-2;
    unsigned long long int ullia =4;
    long int               lia   =8;
    signed int             siia  =-10;
    unsigned short int     usia  =11;
    int                    ib    =3;
    short int              sib   =5;
    long int               lib   =7;
    long long int          llib  =9;


    printf("\n");

    if(ca*ca != 1024)
        printf("***\n");

    if(ca*ia != 64)
        printf("***\n");

    if(ca*llia != 128)
        printf("***\n");

    if(ca*dbla != 256)
        printf("***\n");

    if(ca*ssia != 512)
        printf("***\n");

    if(ca*ulia != 1024)
        printf("***\n");

    if(ca*64 != 2048)
        printf("***\n");

    if(ca*(short int)ca != 1024)
        printf("***\n");

    if(ca/ca != 1)
        printf("***\n");

    if(ca/ia != 16)
        printf("***\n");

    if(ca/sia != 0)
        printf("***\n");

    if(ca/llia != 8)
        printf("***\n");


    if(ca/sca != -16)
        printf("***\n");

    if(ca/ullia != 8)
        printf("***\n");

    if(ca/32 != 1)
        printf("***\n");

    if(ca/(int)llia != 8)
        printf("***\n");

    if(ca%ca != 0)
        printf("***\n");

    if(ca%ib != 2)
        printf("***\n");

    if(ca%sib != 2)
        printf("***\n");

    if(ca%lib != 4)
        printf("***\n");

    if(ca%llib != 5)
        printf("***\n");

    if(ca%siia != 2)
        printf("***\n");

    if(ca%usia != 10)
        printf("***\n");

    if(ca%-12 != 8)
        printf("***\n");

    if(ca%(signed char)lia != 0)
        printf("***\n");


    if(ca/flta != 64)
        printf("***\n");

    if(ca/ldbla != 128)
        printf("***\n");


    printf("\n");
exit (0);
}
