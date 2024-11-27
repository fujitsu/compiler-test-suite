#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
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

    if(1u*ca != 1)
        printf("***\n");

    if(64*ia != 128)
        printf("***\n");

    if(128*sia != 384)
        printf("***\n");

    if(0.5*lia != 2)
        printf("***\n");

    if(1024*llia != 5120)
        printf("***\n");

    if(0.5*flta != 0.25)
        printf("***\n");

    if((int)(4*dbla) != 1)
        printf("***\n");

    if((int)(8*ldbla) != 1)
        printf("***\n");

    if(-.5*slia != 3)
        printf("***\n");

    if(0.1e1*uca != 7)
        printf("***\n");

    if(10*512 != 5120)
        printf("***\n");

    if(64*(int)ca != 64)
        printf("***\n");

    if(128/cb != 16)
        printf("***\n");

    if((int)(256.0/ib) != 28)
        printf("***\n");

    if((int)(519./sib) != 51)
        printf("***\n");

    if(-28/lib != -2)
        printf("***\n");

    if(150l/llib != 12)
        printf("***\n");

    if(128ul/fltb != 2048)
        printf("***\n");

    if(256.0f/dblb != 8192)
        printf("***\n");

    if((int)(512/ldblb) != 32768)
        printf("***\n");

    if((int)(-27/scb) != 2)
        printf("***\n");

    if((int)(.064e+3/uib) != 4)
        printf("***\n");

    if(128u/13 != 9)
        printf("***\n");

    if(-64.0f/-cb != 8)
        printf("***\n");

    if(44%cc != 14)
        printf("***\n");

    if(16lu%ic != 0)
        printf("***\n");

    if(16%sic != 16)
        printf("***\n");

    if(182%lic != 2)
        printf("***\n");

    if(9%llic != 9)
        printf("***\n");

    if(-212%sllic != -12)
        printf("***\n");

    if(32%usic != 11)
        printf("***\n");

    if(4%!0 != 0)
        printf("***\n");

    if(23%(signed char)cc != 8)
        printf("***\n");

    printf("\n");
exit (0);
}
