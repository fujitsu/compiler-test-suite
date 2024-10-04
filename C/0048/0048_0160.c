#include <stdio.h>
int main()
{
    int                    ia    = 64;
    char                   ca    = 1;
    int                    ib    = 2;
    long long int          llia  = 3;
    float                  flta  = 0.125;
    long double            ldbla = 0.0625;
    signed short int       ssia  = -4;
    unsigned long int      ulia  = 5;
    char                   cb    = 6;
    int                    cc    = 7;
    short int              sia   = 8;
    long int               lia   = 9;
    long long int          llib  = 10;
    double                 dbla  = 0.03125;
    signed char            sca   = -11;
    unsigned int           uia   = 12;
    char                   cd    = 13;
    int                    ic    = 14;
    short int              sib   = 15;
    long int               lib   = 16;
    long long int          llic  = 17;
    signed long long int   sllia = -18;
    unsigned short int     usia  = 19;


    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(ia*ca != 64)
        printf("***-01*** N   G ***\n");

    if(ia*ib != 128)
        printf("***-02*** N   G ***\n");

    if(ia*llia != 192)
        printf("***-03*** N   G ***\n");


    if(ia*ssia != -256)
        printf("***-06*** N   G ***\n");

    if(ia*ulia != 320)
        printf("***-07*** N   G ***\n");

    if(ia*6 != 384)
        printf("***-08*** N   G ***\n");

    if(ia*(int)ca != 64)
        printf("***-09*** N   G ***\n");

    if(ia/cb != 10)
        printf("***-10*** N   G ***\n");

    if(ia/cc != 9)
        printf("***-11*** N   G ***\n");

    if(ia/sia != 8)
        printf("***-12*** N   G ***\n");

    if(ia/lia != 7)
        printf("***-13*** N   G ***\n");

    if(ia/llib != 6)
        printf("***-14*** N   G ***\n");


    if(ia/sca != -5)
        printf("***-16*** N   G ***\n");

    if(ia/uia != 5)
        printf("***-17*** N   G ***\n");

    if(ia/13 != 4)
        printf("***-18*** N   G ***\n");

    if(ia/(long long int)cb != 10)
        printf("***-19*** N   G ***\n");

    if(ia%cd != 12)
        printf("***-20*** N   G ***\n");

    if(ia%ic != 8)
        printf("***-21*** N   G ***\n");

    if(ia%sib != 4)
        printf("***-22*** N   G ***\n");

    if(ia%lib != 0)
        printf("***-23*** N   G ***\n");

    if(ia%llic != 13)
        printf("***-24*** N   G ***\n");

    if(ia%sllia != 10)
        printf("***-25*** N   G ***\n");

    if(ia%usia != 7)
        printf("***-26*** N   G ***\n");

    if(ia%20 != 4)
        printf("***-27*** N   G ***\n");

    if(ia%(signed char)cd != 12)
        printf("***-28*** N   G ***\n");


    if(ia*flta != 8)
        printf("***-04*** N   G ***\n");

    if(ia*ldbla != 4)
        printf("***-05*** N   G ***\n");

    if(ia/dbla != 2048)
        printf("***-15*** N   G ***\n");


    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
