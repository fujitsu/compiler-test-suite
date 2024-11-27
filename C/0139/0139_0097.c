#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    signed char            sc    = 32;
    signed int             si    = 64;
    signed short int       ssi   = -128;
    signed long int        sli   = 256;
    signed long long int   slli  = 512;

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

    if(sc*ca != 32)
        printf("***\n");

    if(si*ia != 128)
        printf("***\n");

    if(ssi*sia != -384)
        printf("***\n");

    if(sli*lia != 1024)
        printf("***\n");

    if(slli*llia != 2560)
        printf("***\n");

    if(sc*flta != 16)
        printf("***\n");

    if(si*dbla != 16)
        printf("***\n");

    if(ssi*ldbla != -16)
        printf("***\n");

    if(sli*slia != -1536)
        printf("***\n");

    if(slli*uca != 3584)
        printf("***\n");

    if(sc*512 != 16384)
        printf("***\n");

    if(si*(int)ca != 64)
        printf("***\n");

    if(ssi/cb != -16)
        printf("***\n");

    if(sli/ib != 28)
        printf("***\n");

    if(slli/sib != 51)
        printf("***\n");

    if(sc/lib != 2)
        printf("***\n");

    if(si/llib != 5)
        printf("***\n");

    if(ssi/fltb != -2048)
        printf("***\n");

    if(sli/dblb != 8192)
        printf("***\n");

    if(slli/ldblb != 32768)
        printf("***\n");

    if(sc/scb != -2)
        printf("***\n");

    if(si/uib != 4)
        printf("***\n");

    if(ssi/13 != -9)
        printf("***\n");

    if(sli/(long long int)cb != 32)
        printf("***\n");

    if(slli%cc != 2)
        printf("***\n");

    if(sc%ic != 0)
        printf("***\n");

    if(si%sic != 13)
        printf("***\n");

    if(ssi%lic != -2)
        printf("***\n");

    if(sli%llic != 9)
        printf("***\n");

    if(slli%sllic != 12)
        printf("***\n");

    if(sc%usic != 11)
        printf("***\n");

    if(si%20 != 4)
        printf("***\n");

    if(ssi%(signed char)cc != -8)
        printf("***\n");

    printf("\n");
exit (0);
}
