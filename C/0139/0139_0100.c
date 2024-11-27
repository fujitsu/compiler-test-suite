#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    int                    *pi,rpi = 10;
    char                   c       = 0;
    int                    arr[10] = { 0,1,2,3,4,5,6,7,8,9 };

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
#ifndef nollint
    long long int          llia  = 5;
#endif
    float                  flta  = 0.5;
    double                 dbla  = 0.25;
    long double            ldbla = 0.125;
    signed long int        slia  = -6;
    unsigned char          uca   = 7;

    char                   cb    = 8;
    int                    ib    = 9;
    short int              sib   = 10;
    long int               lib   = 11;
#ifndef nollint
    long long int          llib  = 12;
#endif
    float                  fltb  = 0.0625;
    double                 dblb  = 0.03125;
    long double            ldblb = 0.015625;
    signed char            scb   = -13;
    unsigned int           uib   = 14;

    char                   cc    = 15;
    int                    ic    = 16;
    short int              sic   = 17;
    long int               lic   = 18;
#ifndef nollint
    long long int          llic  = 19;
    signed long long int   sllic = -20;
#endif
    unsigned short int     usic  = 21;


    printf("\n");

    pi = &rpi;
    if(*pi*ca != 10)
        printf("***\n");

    if(ia**pi != 20)
        printf("***\n");

    if(-rpi*sia != -30)
        printf("***\n");

    if(+rpi*-lia != -40)
        printf("***\n");

#ifndef nollint
    if(~0xffffffff*llia != 0)
        printf("***\n");
#endif
    if(!c*flta != .5)
        printf("***\n");

    if(dbla*!*pi!=0)
        printf("***\n");

    if((++rpi+ ++rpi+ ++rpi)*ldbla != 4.5)
        printf("***\n");

    if((--rpi- --rpi- --rpi)*slia != 54)
        printf("***\n");

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;
    if(sizeof(int)*uca != 28)
        printf("***\n");

    if((int)c*512 != 0)
        printf("***\n");

#ifndef nollint
    if(sizeof((long long int) (int)c)*(int)ca != 8)
        printf("***\n");
#endif

    if(sizeof(arr)/cb != 5)
        printf("***\n");

    if(*pi/ib != 1)
        printf("***\n");

    if(sib/ *pi != 1)
        printf("***\n");

    if(!c/lib != 0)
        printf("***\n");

#ifndef nollint
    if(sizeof(short int)/llib != 0)
        printf("***\n");
#endif
    if(-*pi/fltb != -160)
        printf("***\n");

    if(-+*pi/dblb != -320)
        printf("***\n");

    if(sizeof(.1)/ldblb != 512)
        printf("***\n");

    1+1+1+1+1+1+1+1+1+1+1+1+1+1 +1+1+1+1+1+
    2+2+2+2+2+2+2+2            +3+3+3+3+3+3+3+3+3+3+3+3+3+

    4 == 100;

    if(-scb/scb != -1)
        printf("***\n");

    if(-28/uib != 306783376)
        printf("***\n");

    if(sizeof(arr) / 13 != 3)
        printf("***\n");

#ifndef nollint
    if((unsigned int)*pi/(long long int)cb != 1)
        printf("***\n");
#endif

    if(!0%cc != 1)
        printf("***\n");

    if(!20%ic != 0)
        printf("***\n");

    if(18%sic != 1)
        printf("***\n");

    if(19%lic != 1)
        printf("***\n");

#ifndef nollint
    if((int)100.00000%llic != 5)
        printf("***\n");

    if((int)256.f%sllic != 16)
        printf("***\n");
#endif

    if(sizeof(256.l)%usic != 16)
        printf("***\n");

    *pi = 100;if
    (
    ++ rpi

    %
     5                                            !=
    1)
        printf("***\n");

    if(!++cc-cc+cc%(signed char)cc != -16)
        printf("***\n");

    printf("\n");
exit (0);
}
