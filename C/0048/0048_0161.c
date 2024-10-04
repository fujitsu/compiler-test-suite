#include <stdio.h>
int main()
{
    short int              sia   = 128;
    char                   ca    = 1;
    int                    ib    = 2;
    short int              siab  = 3;
    long long int          llia  = 4;
    float                  flta  = 0.5;
    long double            ldbla = 0.25;
    signed long int        slia  = -5;
    unsigned char          uca   = 6;
    char                   cb    = 7;
    short int              sib   = 8;
    long int               lia   = 9;
    long long int          llib  = 10;
    double                 dbla  = 0.03125;
    signed char            sca   = -11;
    unsigned int           uia   = 12;
    char                   cc    = 13;
    int                    ic    = 14;
    short int              sic   = 15;
    long int               lib   = 16;
    long long int          llic  = 17;
    signed long long int   sllia = -18;
    unsigned short int     usia  = 19;


    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(sia*ca != 128)
        printf("***-01*** N   G ***\n");

    if(sia*ib != 256)
        printf("***-02*** N   G ***\n");

    if(sia*siab != 384)
        printf("***-03*** N   G ***\n");

    if(sia*llia != 512)
        printf("***-04*** N   G ***\n");


    if(sia*slia != -640)
        printf("***-07*** N   G ***\n");

    if(sia*uca != 768)
        printf("***-08*** N   G ***\n");

    if(sia*128 != 16384)
        printf("***-09*** N   G ***\n");

    if(sia*(int)ca != 128)
        printf("***-10*** N   G ***\n");

    if(sia/cb != 18)
        printf("***-11*** N   G ***\n");

    if(sia/sib != 16)
        printf("***-12*** N   G ***\n");

    if(sia/lia != 14)
        printf("***-13*** N   G ***\n");

    if(sia/llib != 12)
        printf("***-14*** N   G ***\n");


    if(sia/sca != -11)
        printf("***-16*** N   G ***\n");

    if(sia/uia != 10)
        printf("***-17*** N   G ***\n");

    if(sia/13 != 9)
        printf("***-18*** N   G ***\n");

    if(sia/(long long int)cb != 18)
        printf("***-19*** N   G ***\n");

    if(sia%cc != 11)
        printf("***-20*** N   G ***\n");

    if(sia%ic != 2)
        printf("***-21*** N   G ***\n");

    if(sia%sic != 8)
        printf("***-22*** N   G ***\n");

    if(sia%lib != 0)
        printf("***-23*** N   G ***\n");

    if(sia%llic != 9)
        printf("***-24*** N   G ***\n");

    if(sia%sllia != 2)
        printf("***-25*** N   G ***\n");

    if(sia%usia != 14)
        printf("***-26*** N   G ***\n");

    if(sia%20 != 8)
        printf("***-27*** N   G ***\n");

    if(sia%(signed char)cc != 11)
        printf("***-28*** N   G ***\n");


    if(sia*flta != 64)
        printf("***-05*** N   G ***\n");

    if(sia*ldbla != 32)
        printf("***-06*** N   G ***\n");

    if(sia/dbla != 4096)
        printf("***-15*** N   G ***\n");


    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
