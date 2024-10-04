#include <stdio.h>
int main()
{
    long int               lia   = 256;
    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long long int          llia  = 4;
    float                  flta  = 0.5;
    long double            ldbla = 0.25;
    signed long int        slia  = -5;
    unsigned char          uca   = 6;
    char                   cb    = 7;
    short int              sib   = 8;
    long int               lib   = 9;
    long long int          llib  = 10;
    float                  fltb  = 0.015625;
    double                 dbla  = 0.03125;
    signed char            sca   = -11;
    unsigned int           uia   = 12;
    char                   cc    = 13;
    int                    ic    = 14;
    short int              sic   = 15;
    long int               lic   = 16;
    long long int          llic  = 17;
    signed long long int   sllia = -18;
    unsigned short int     usia  = 19;
    long int               lid   = 20;
    int                    ib    = 21;
    long double            ldblb = 0.0078125;


    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(lia*ca != 256)
        printf("***-01*** N   G ***\n");

    if(lia*ia != 512)
        printf("***-02*** N   G ***\n");

    if(lia*sia != 768)
        printf("***-03*** N   G ***\n");

    if(lia*lid != 5120)
        printf("***-04*** N   G ***\n");

    if(lia*llia != 1024)
        printf("***-05*** N   G ***\n");


    if(lia*slia != -1280)
        printf("***-08*** N   G ***\n");

    if(lia*uca != 1536)
        printf("***-09*** N   G ***\n");

    if(lia*256 != 65536)
        printf("***-10*** N   G ***\n");

    if(lia*(int)ca != 256)
        printf("***-11*** N   G ***\n");

    if(lia/cb != 36)
        printf("***-12*** N   G ***\n");

    if(lia/ib != 12)
        printf("***-13*** N   G ***\n");

    if(lia/sib != 32)
        printf("***-14*** N   G ***\n");

    if(lia/lib != 28)
        printf("***-15*** N   G ***\n");

    if(lia/llib != 25)
        printf("***-16*** N   G ***\n");


    if(lia/sca != -23)
        printf("***-20*** N   G ***\n");

    if(lia/uia != 21)
        printf("***-21*** N   G ***\n");

    if(lia/13 != 19)
        printf("***-22*** N   G ***\n");

    if(lia/(long long int)cb != 36)
        printf("***-23*** N   G ***\n");

    if(lia%cc != 9)
        printf("***-24*** N   G ***\n");

    if(lia%ic != 4)
        printf("***-25*** N   G ***\n");

    if(lia%sic != 1)
        printf("***-26*** N   G ***\n");

    if(lia%lic != 0)
        printf("***-27*** N   G ***\n");

    if(lia%llic != 1)
        printf("***-28*** N   G ***\n");

    if(lia%sllia != 4)
        printf("***-29*** N   G ***\n");

    if(lia%usia != 9)
        printf("***-30*** N   G ***\n");

    if(lia%20 != 16)
        printf("***-31*** N   G ***\n");

    if(lia%(signed char)cc != 9)
        printf("***-32*** N   G ***\n");


    if(lia*flta != 128)
        printf("***-06*** N   G ***\n");

    if(lia*ldbla != 64)
        printf("***-07*** N   G ***\n");

    if(lia/fltb != 16384)
        printf("***-17*** N   G ***\n");

    if(lia/dbla != 8192)
        printf("***-18*** N   G ***\n");

    if(lia/ldblb != 32768)
        printf("***-19*** N   G ***\n");


    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
