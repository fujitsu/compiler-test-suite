#include <stdio.h>
int main()
{
    char                     ca    =    1;
    char                     cb    =  128;
    int                      ia    =    2;
    int                      ib    =  -99;
    short int                sia   =    3;
    short int                sib   =  -98;
    long int                 lia   =    4;
    long int                 lib   =  -97;
    long long int            llia  =    5;
    long long int            llib  =  -96;
    float                    fa    =    6;
    float                    fb    =  -95;
    double                   da    =    7;
    double                   db    =  -94;
    long double              lda   =    8;
    long double              ldb   =  -93;
    signed char              sca   =    9;
    signed char              scb   =  -92;
    signed int               shia  =   10;
    signed int               shib  =  -91;
    signed short int         ssia  =   11;
    signed short int         ssib  =  -90;
    signed long int          slia  =   12;
    signed long int          slib  =  -89;
    signed long long int     sllia =   13;
    signed long long int     sllib =  -88;
    unsigned char            uca   =   14;
    unsigned char            ucb   =   -1;
    unsigned int             uia   =   15;
    unsigned int             uib   =   -2;
    unsigned short int       usia  =   16;
    unsigned short int       usib  =   -3;
    unsigned long int        ulia  =   17;
    unsigned long int        ulib  =   -4;
    unsigned long long int   ullia =   18;
    unsigned long long int   ullib =   -5;

    if(-ca == -1)
        printf("***-01*** O     K ***\n");
    else
        printf("***-01**** N   G ****\n");

#ifdef S_CHAR
    if(+cb == -128)
#else
    if(+cb ==  128)
#endif
        printf("***-02*** O     K ***\n");
    else
        printf("***-02**** N   G ****\n");

    if(-ib == 99)
        printf("***-03*** O     K ***\n");
    else
        printf("***-03**** N   G ****\n");

    if(+ia == 2)
        printf("***-04*** O     K ***\n");
    else
        printf("***-04**** N   G ****\n");

    if(-sia == -3)
        printf("***-05*** O     K ***\n");
    else
        printf("***-05**** N   G ****\n");

    if(+sib == -98)
        printf("***-06*** O     K ***\n");
    else
        printf("***-06**** N   G ****\n");

    if(-lib == 97)
        printf("***-07*** O     K ***\n");
    else
        printf("***-07**** N   G ****\n");

    if(+lia == 4)
        printf("***-08*** O     K ***\n");
    else
        printf("***-08**** N   G ****\n");

    if(-llia == -5)
        printf("***-09*** O     K ***\n");
    else
        printf("***-09**** N   G ****\n");

    if(+llib == -96)
        printf("***-10*** O     K ***\n");
    else
        printf("***-10**** N   G ****\n");

    if(-fb == 95)
        printf("***-11*** O     K ***\n");
    else
        printf("***-11**** N   G ****\n");

    if(+fa ==  6)
        printf("***-12*** O     K ***\n");
    else
        printf("***-12**** N   G ****\n");

    if(-da == -7)
        printf("***-13*** O     K ***\n");
    else
        printf("***-13**** N   G ****\n");

    if(+db == -94)
        printf("***-14*** O     K ***\n");
    else
        printf("***-14**** N   G ****\n");

    if(-ldb == 93)
        printf("***-15*** O     K ***\n");
    else
        printf("***-15**** N   G ****\n");

    if(+lda ==  8)
        printf("***-16*** O     K ***\n");
    else
        printf("***-16**** N   G ****\n");

    if(-sca == -9)
        printf("***-17*** O     K ***\n");
    else
        printf("***-17**** N   G ****\n");

    if(+scb == -92)
        printf("***-18*** O     K ***\n");
    else
        printf("***-18**** N   G ****\n");

    if(-shib == 91)
        printf("***-19*** O     K ***\n");
    else
        printf("***-19**** N   G ****\n");

    if(+shia == 10)
        printf("***-20*** O     K ***\n");
    else
        printf("***-20**** N   G ****\n");

    if(-ssia == -11)
        printf("***-21*** O     K ***\n");
    else
        printf("***-21**** N   G ****\n");

    if(+ssib == -90)
        printf("***-22*** O     K ***\n");
    else
        printf("***-22**** N   G ****\n");

    if(-slib == 89)
        printf("***-23*** O     K ***\n");
    else
        printf("***-23**** N   G ****\n");

    if(+slia == 12)
        printf("***-24*** O     K ***\n");
    else
        printf("***-24**** N   G ****\n");

    if(-sllia == -13)
        printf("***-25*** O     K ***\n");
    else
        printf("***-25**** N   G ****\n");

    if(+sllib == -88)
        printf("***-26*** O     K ***\n");
    else
        printf("***-26**** N   G ****\n");

    if(+uca == 14)
        printf("***-27*** O     K ***\n");
    else
        printf("***-27**** N   G ****\n");

    if(+ucb == 0xff)
        printf("***-28*** O     K ***\n");
    else
        printf("***-28**** N   G ****\n");

    if(-uia == 0xfffffff1)
        printf("***-29*** O     K ***\n");
    else
        printf("***-29**** N   G ****\n");

    if(+uib == 0xfffffffe)
        printf("***-30*** O     K ***\n");
    else
        printf("***-30**** N   G ****\n");

    if(+usia == 16)
        printf("***-31*** O     K ***\n");
    else
        printf("***-31**** N   G ****\n");

    if(-usib == -(65533))
        printf("***-32*** O     K ***\n");
    else
        printf("***-32**** N   G ****\n");

    if(+ulia == 17)
        printf("***-33*** O     K ***\n");
    else
        printf("***-33**** N   G ****\n");

    if(-ulib == 4)
        printf("***-34*** O     K ***\n");
    else
        printf("***-34**** N   G ****\n");

    if(-ullia == 0xffffffffffffffeeLL)
        printf("***-35*** O     K ***\n");
    else
        printf("***-35**** N   G ****\n");

    if(+ullib == 0xfffffffffffffffbLL)
        printf("***-36*** O     K ***\n");
    else
        printf("***-36**** N   G ****\n");
 }
