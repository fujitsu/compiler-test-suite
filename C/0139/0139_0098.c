#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    unsigned char          uc    = 32;
    unsigned int           ui    = 64;
    unsigned short int     usi   = 128;
    unsigned long int      uli   = 256;
    unsigned long long int ulli  = 512;

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
    signed long long int   sllic = 20;
    unsigned short int     usic  = 21;


    printf("\n");

    if(uc*ca != 32)
        printf("***\n");

    if(ui*ia != 128)
        printf("***\n");

    if(usi*sia != 384)
        printf("***\n");

    if(uli*lia != 1024)
        printf("***\n");

    if(ulli*llia != 2560)
        printf("***\n");


    if(uli*slia != -1536)
        printf("***\n");

    if(ulli*uca != 3584)
        printf("***\n");

    if(uc*512 != 16384)
        printf("***\n");

    if(ui*(int)ca != 64)
        printf("***\n");

    if(usi/cb != 16)
        printf("***\n");

    if(uli/ib != 28)
        printf("***\n");

    if(ulli/sib != 51)
        printf("***\n");

    if(uc/lib != 2)
        printf("***\n");

    if(ui/llib != 5)
        printf("***\n");


    if(uc/scb != -2)
        printf("***\n");

    if(ui/uib != 4)
        printf("***\n");

    if(usi/13 != 9)
        printf("***\n");

    if(uli/(long long int)cb != 32)
        printf("***\n");

    if(ulli%cc != 2)
        printf("***\n");

    if(uc%ic != 0)
        printf("***\n");

    if(ui%sic != 13)
        printf("***\n");

    if(usi%lic != 2)
        printf("***\n");

    if(uli%llic != 9)
        printf("***\n");

    if(ulli%sllic != 12)
        printf("***\n");

    if(uc%usic != 11)
        printf("***\n");

    if(ui%20 != 4)
        printf("***\n");

    if(usi%(signed char)cc != 8)
        printf("***\n");


    if(uc*flta != 16)
        printf("***\n");

    if(ui*dbla != 16)
        printf("***\n");

    if(usi*ldbla != 16)
        printf("***\n");

    if(usi/fltb != 2048)
        printf("***\n");

    if(uli/dblb != 8192)
        printf("***\n");

    if(ulli/ldblb != 32768)
        printf("***\n");


    printf("\n");

exit (0);
}
