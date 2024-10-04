#include <stdio.h>
int main()
{
    char                   ca    =32;
    int                    ia    =2;
    long long int          llia  =4;
    double                 dbla  =8;
    signed short int       ssia  =16;
    unsigned long int      ulia  =32;
    short int              sia   =64;
    float                  flta  =0.5;
    long double            ldbla =0.25;
    signed char            sca   =-2;
    unsigned long long int ullia =4;
    long int               lia   =8;
    signed int             siia  =-10;
    unsigned short int     usia  =11;
    int                    ib    =3;
    short int              sib   =5;
    long int               lib   =7;
    long long int          llib  =9;


    printf("*** TEST FOR EXPRESSION ***STARTED\n");

    if(ca*ca != 1024)
        printf("***-01*** N   G ***\n");

    if(ca*ia != 64)
        printf("***-02*** N   G ***\n");

    if(ca*llia != 128)
        printf("***-03*** N   G ***\n");

    if(ca*dbla != 256)
        printf("***-04*** N   G ***\n");

    if(ca*ssia != 512)
        printf("***-05*** N   G ***\n");

    if(ca*ulia != 1024)
        printf("***-06*** N   G ***\n");

    if(ca*64 != 2048)
        printf("***-07*** N   G ***\n");

    if(ca*(short int)ca != 1024)
        printf("***-08*** N   G ***\n");

    if(ca/ca != 1)
        printf("***-09*** N   G ***\n");

    if(ca/ia != 16)
        printf("***-10*** N   G ***\n");

    if(ca/sia != 0)
        printf("***-11*** N   G ***\n");

    if(ca/llia != 8)
        printf("***-12*** N   G ***\n");


    if(ca/sca != -16)
        printf("***-15*** N   G ***\n");

    if(ca/ullia != 8)
        printf("***-16*** N   G ***\n");

    if(ca/32 != 1)
        printf("***-17*** N   G ***\n");

    if(ca/(int)llia != 8)
        printf("***-18*** N   G ***\n");

    if(ca%ca != 0)
        printf("***-19*** N   G ***\n");

    if(ca%ib != 2)
        printf("***-20*** N   G ***\n");

    if(ca%sib != 2)
        printf("***-21*** N   G ***\n");

    if(ca%lib != 4)
        printf("***-22*** N   G ***\n");

    if(ca%llib != 5)
        printf("***-23*** N   G ***\n");

    if(ca%siia != 2)
        printf("***-24*** N   G ***\n");

    if(ca%usia != 10)
        printf("***-25*** N   G ***\n");

    if(ca%-12 != 8)
        printf("***-26*** N   G ***\n");

    if(ca%(signed char)lia != 0)
        printf("***-27*** N   G ***\n");


    if(ca/flta != 64)
        printf("***-13*** N   G ***\n");

    if(ca/ldbla != 128)
        printf("***-14*** N   G ***\n");


    printf("*** TEST FOR EXPRESSION ***ENDED\n");
}
