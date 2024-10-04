#include <stdio.h>
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


    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    pi = &rpi;
    if(*pi*ca != 10)
        printf("***-01*** N   G ***\n");

    if(ia**pi != 20)
        printf("***-02*** N   G ***\n");

    if(-rpi*sia != -30)
        printf("***-03*** N   G ***\n");

    if(+rpi*-lia != -40)
        printf("***-04*** N   G ***\n");

#ifndef nollint
    if(~0xffffffff*llia != 0)
        printf("***-05*** N   G ***\n");
#endif
    if(!c*flta != .5)
        printf("***-06*** N   G ***\n");

    if(dbla*!*pi!=0)
        printf("***-07*** N   G ***\n");

    if((++rpi+ ++rpi+ ++rpi)*ldbla != 4.5)
        printf("***-08*** N   G ***\n");

    if((--rpi- --rpi- --rpi)*slia != 54)
        printf("***-09*** N   G ***\n");

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;
    if(sizeof(int)*uca != 28)
        printf("***-10*** N   G ***\n");

    if((int)c*512 != 0)
        printf("***-11*** N   G ***\n");


    if(sizeof(arr)/cb != 5)
        printf("***-13*** N   G ***\n");

    if(*pi/ib != 1)
        printf("***-14*** N   G ***\n");

    if(sib/ *pi != 1)
        printf("***-15*** N   G ***\n");

    if(!c/lib != 0)
        printf("***-16*** N   G ***\n");

#ifndef nollint
    if(sizeof(short int)/llib != 0)
        printf("***-17*** N   G ***\n");
#endif
    if(-*pi/fltb != -160)
        printf("***-18*** N   G ***\n");

    if(-+*pi/dblb != -320)
        printf("***-19*** N   G ***\n");

    if(sizeof(.1)/ldblb != 512)
        printf("***-20*** N   G ***\n");

    1+1+1+1+1+1+1+1+1+1+1+1+1+1                          +1+1+1+1+1+
    2+2+2+2+2+2+2+2            +3+3+3+3+3+3+3+3+3+3+3+3+3+

    4 == 100;

    if(-scb/scb != -1)
        printf("***-21*** N   G ***\n");

    if(-28/uib != 306783376)
        printf("***-22*** N   G ***\n");

    if(sizeof(arr) / 13 != 3)
        printf("***-23*** N   G ***\n");

#ifndef nollint
    if((unsigned int)*pi/(long long int)cb != 1)
        printf("***-24*** N   G ***\n");
#endif

    if(!0%cc != 1)
        printf("***-25*** N   G ***\n");

    if(!20%ic != 0)
        printf("***-26*** N   G ***\n");

    if(18%sic != 1)
        printf("***-27*** N   G ***\n");

    if(19%lic != 1)
        printf("***-28*** N   G ***\n");

#ifndef nollint
    if((int)100.00000%llic != 5)
        printf("***-29*** N   G ***\n");

    if((int)256.f%sllic != 16)
        printf("***-30*** N   G ***\n");
#endif

#if __NO_LONGDOUBLE
    if(sizeof(256.l)%usic != 8)
#elif __R12 || __i386
    if(sizeof(256.l)%usic != 12)
#else
    if(sizeof(256.l)%usic != 16)
#endif
        printf("***-31*** N   G ***\n");

    *pi = 100;if
    (
    ++                         rpi

    %
     5                                            !=
    1)
        printf("***-32*** N   G ***\n");

    if(!++cc-cc+cc%(signed char)cc != -16)
        printf("***-33*** N   G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
