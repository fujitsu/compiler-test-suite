#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    float                  flt   = 1024;

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


    printf("\n");

    if(flt*ca != 1024)
        printf("***\n");

    if(flt*ia != 2048)
        printf("***\n");

    if(flt*sia != 3072)
        printf("***\n");

    if(flt*lia != 4096)
        printf("***\n");

    if(flt*llia != 5120)
        printf("***\n");


    if(flt*slia != -6144)
        printf("***\n");

    if(flt*uca != 7168)
        printf("***\n");

    if(flt*1024 != 1048576)
        printf("***\n");

    if(flt*(int)ca != 1024)
        printf("***\n");

    if(flt/cb != 128)
        printf("***\n");

    if((int)flt/ib != 113)
        printf("***\n");

    if((int)flt/sib != 102)
        printf("***\n");

    if((int)flt/lib != 93)
        printf("***\n");

    if((int)flt/llib != 85)
        printf("***\n");


    if((int)flt/scb != -78)
        printf("***\n");

    if((int)flt/uib != 73)
        printf("***\n");

    if((int)flt/13 != 78)
        printf("***\n");

    if((int)flt/(long long int)cb != 128)
        printf("***\n");


    if(flt*flta != 512)
        printf("***\n");

    if(flt*dbla != 256)
        printf("***\n");

    if(flt*ldbla != 128)
        printf("***\n");

    if(flt/fltb != 16384)
        printf("***\n");

    if(flt/dblb != 32768)
        printf("***\n");

    if(flt/ldblb != 65536)
        printf("***\n");


    printf("\n");
exit (0);
}
