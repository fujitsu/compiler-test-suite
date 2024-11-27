#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    long long int          lli   = 512;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    float                  flta  = 0.5;
    double                 dbla  = 0.25;
    long double            ldbla = 0.125;
    signed long int        slia  = -6;
    unsigned char          uca   = 7;

    char                   cb    = 8;
    int                    ib    = 9;
    short int              sib   = 10;
    long int               lib   = 11;
    long long int          llib  = 12;
    float                  fltb  = 0.0625;
    double                 dblb  = 0.03125;
    long double            ldblb = 0.015625;
    signed char            scb   = -13;
    unsigned int           uib   = 14;

    char                   cc    = 15;
    int                    ic    = 16;
    short int              sic   = 17;
    long int               lic   = 18;
    long long int          llic  = 19;
    signed long long int   sllic = -20;
    unsigned short int     usic  = 21;


    printf("\n");

    if(lli*ca != 512)
        printf("***\n");

    if(lli*ia != 1024)
        printf("***\n");

    if(lli*sia != 1536)
        printf("***\n");

    if(lli*lia != 2048)
        printf("***\n");

    if(lli*llia != 2560)
        printf("***\n");

    if(lli*flta != 256)
        printf("***\n");

    if(lli*dbla != 128)
        printf("***\n");

    if(lli*ldbla != 64)
        printf("***\n");

    if(lli*slia != -3072)
        printf("***\n");

    if(lli*uca != 3584)
        printf("***\n");

    if(lli*512 != 262144)
        printf("***\n");

    if(lli*(int)ca != 512)
        printf("***\n");

    if(lli/cb != 64)
        printf("***\n");

    if(lli/ib != 56)
        printf("***\n");

    if(lli/sib != 51)
        printf("***\n");

    if(lli/lib != 46)
        printf("***\n");

    if(lli/llib != 42)
        printf("***\n");

    if(lli/fltb != 8192)
        printf("***\n");

    if(lli/dblb != 16384)
        printf("***\n");

    if(lli/ldblb != 32768)
        printf("***\n");

    if(lli/scb != -39)
        printf("***\n");

    if(lli/uib != 36)
        printf("***\n");

    if(lli/13 != 39)
        printf("***\n");

    if(lli/(long long int)cb != 64)
        printf("***\n");

    if(lli%cc != 2)
        printf("***\n");

    if(lli%ic != 0)
        printf("***\n");

    if(lli%sic != 2)
        printf("***\n");

    if(lli%lic != 8)
        printf("***\n");

    if(lli%llic != 18)
        printf("***\n");

    if(lli%sllic != 12)
        printf("***\n");

    if(lli%usic != 8)
        printf("***\n");

    if(lli%20 != 12)
        printf("***\n");

    if(lli%(signed char)cc != 2)
        printf("***\n");

    printf("\n");
exit (0);
}
