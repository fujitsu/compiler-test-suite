#include <stdio.h>
int main()
{
    long long int          lli   = 512;

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


    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(lli*ca != 512)
        printf("***-01*** N   G ***\n");

    if(lli*ia != 1024)
        printf("***-02*** N   G ***\n");

    if(lli*sia != 1536)
        printf("***-03*** N   G ***\n");

    if(lli*lia != 2048)
        printf("***-04*** N   G ***\n");

    if(lli*llia != 2560)
        printf("***-05*** N   G ***\n");

    if(lli*flta != 256)
        printf("***-06*** N   G ***\n");

    if(lli*dbla != 128)
        printf("***-07*** N   G ***\n");

    if(lli*ldbla != 64)
        printf("***-08*** N   G ***\n");

    if(lli*slia != -3072)
        printf("***-09*** N   G ***\n");

    if(lli*uca != 3584)
        printf("***-10*** N   G ***\n");

    if(lli*512 != 262144)
        printf("***-11*** N   G ***\n");

    if(lli*(int)ca != 512)
        printf("***-12*** N   G ***\n");

    if(lli/cb != 64)
        printf("***-13*** N   G ***\n");

    if(lli/ib != 56)
        printf("***-14*** N   G ***\n");

    if(lli/sib != 51)
        printf("***-15*** N   G ***\n");

    if(lli/lib != 46)
        printf("***-16*** N   G ***\n");

    if(lli/llib != 42)
        printf("***-17*** N   G ***\n");

    if(lli/fltb != 8192)
        printf("***-18*** N   G ***\n");

    if(lli/dblb != 16384)
        printf("***-19*** N   G ***\n");

    if(lli/ldblb != 32768)
        printf("***-20*** N   G ***\n");

    if(lli/scb != -39)
        printf("***-21*** N   G ***\n");

    if(lli/uib != 36)
        printf("***-22*** N   G ***\n");

    if(lli/13 != 39)
        printf("***-23*** N   G ***\n");

    if(lli/(long long int)cb != 64)
        printf("***-24*** N   G ***\n");

    if(lli%cc != 2)
        printf("***-25*** N   G ***\n");

    if(lli%ic != 0)
        printf("***-26*** N   G ***\n");

    if(lli%sic != 2)
        printf("***-27*** N   G ***\n");

    if(lli%lic != 8)
        printf("***-28*** N   G ***\n");

    if(lli%llic != 18)
        printf("***-29*** N   G ***\n");

    if(lli%sllic != 12)
        printf("***-30*** N   G ***\n");

    if(lli%usic != 8)
        printf("***-31*** N   G ***\n");

    if(lli%20 != 12)
        printf("***-32*** N   G ***\n");

    if(lli%(signed char)cc != 2)
        printf("***-33*** N   G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
