#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    long int               lia   = 256;
    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long long int          llia  = 4;
    float                  flta  = 0.5;
    long double            ldbla = 0.25;
    signed long int        slia  = -5;
    unsigned char          uca   = 6;
    char                   cb    = 7;
    short int              sib   = 8;
    long int               lib   = 9;
    long long int          llib  = 10;
    float                  fltb  = 0.015625;
    double                 dbla  = 0.03125;
    signed char            sca   = -11;
    unsigned int           uia   = 12;
    char                   cc    = 13;
    int                    ic    = 14;
    short int              sic   = 15;
    long int               lic   = 16;
    long long int          llic  = 17;
    signed long long int   sllia = -18;
    unsigned short int     usia  = 19;
    long int               lid   = 20;
    int                    ib    = 21;
    long double            ldblb = 0.0078125;


    printf("\n");

    if(lia*ca != 256)
        printf("***\n");

    if(lia*ia != 512)
        printf("***\n");

    if(lia*sia != 768)
        printf("***\n");

    if(lia*lid != 5120)
        printf("***\n");

    if(lia*llia != 1024)
        printf("***\n");


    if(lia*slia != -1280)
        printf("***\n");

    if(lia*uca != 1536)
        printf("***\n");

    if(lia*256 != 65536)
        printf("***\n");

    if(lia*(int)ca != 256)
        printf("***\n");

    if(lia/cb != 36)
        printf("***\n");

    if(lia/ib != 12)
        printf("***\n");

    if(lia/sib != 32)
        printf("***\n");

    if(lia/lib != 28)
        printf("***\n");

    if(lia/llib != 25)
        printf("***\n");


    if(lia/sca != -23)
        printf("***\n");

    if(lia/uia != 21)
        printf("***\n");

    if(lia/13 != 19)
        printf("***\n");

    if(lia/(long long int)cb != 36)
        printf("***\n");

    if(lia%cc != 9)
        printf("***\n");

    if(lia%ic != 4)
        printf("***\n");

    if(lia%sic != 1)
        printf("***\n");

    if(lia%lic != 0)
        printf("***\n");

    if(lia%llic != 1)
        printf("***\n");

    if(lia%sllia != 4)
        printf("***\n");

    if(lia%usia != 9)
        printf("***\n");

    if(lia%20 != 16)
        printf("***\n");

    if(lia%(signed char)cc != 9)
        printf("***\n");


    if(lia*flta != 128)
        printf("***\n");

    if(lia*ldbla != 64)
        printf("***\n");

    if(lia/fltb != 16384)
        printf("***\n");

    if(lia/dbla != 8192)
        printf("***\n");

    if(lia/ldblb != 32768)
        printf("***\n");


    printf("\n");
exit (0);
}
