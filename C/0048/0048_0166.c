#include <stdio.h>
int main()
{
    signed char            sc    = 32;
    signed int             si    = 64;
    signed short int       ssi   = -128;
    signed long int        sli   = 256;
    signed long long int   slli  = 512;

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

    if(sc*ca != 32)
        printf("***-01*** N   G ***\n");

    if(si*ia != 128)
        printf("***-02*** N   G ***\n");

    if(ssi*sia != -384)
        printf("***-03*** N   G ***\n");

    if(sli*lia != 1024)
        printf("***-04*** N   G ***\n");

    if(slli*llia != 2560)
        printf("***-05*** N   G ***\n");

    if(sc*flta != 16)
        printf("***-06*** N   G ***\n");

    if(si*dbla != 16)
        printf("***-07*** N   G ***\n");

    if(ssi*ldbla != -16)
        printf("***-08*** N   G ***\n");

    if(sli*slia != -1536)
        printf("***-09*** N   G ***\n");

    if(slli*uca != 3584)
        printf("***-10*** N   G ***\n");

    if(sc*512 != 16384)
        printf("***-11*** N   G ***\n");

    if(si*(int)ca != 64)
        printf("***-12*** N   G ***\n");

    if(ssi/cb != -16)
        printf("***-13*** N   G ***\n");

    if(sli/ib != 28)
        printf("***-14*** N   G ***\n");

    if(slli/sib != 51)
        printf("***-15*** N   G ***\n");

    if(sc/lib != 2)
        printf("***-16*** N   G ***\n");

    if(si/llib != 5)
        printf("***-17*** N   G ***\n");

    if(ssi/fltb != -2048)
        printf("***-18*** N   G ***\n");

    if(sli/dblb != 8192)
        printf("***-19*** N   G ***\n");

    if(slli/ldblb != 32768)
        printf("***-20*** N   G ***\n");

    if(sc/scb != -2)
        printf("***-21*** N   G ***\n");

    if(si/uib != 4)
        printf("***-22*** N   G ***\n");

    if(ssi/13 != -9)
        printf("***-23*** N   G ***\n");

    if(sli/(long long int)cb != 32)
        printf("***-24*** N   G ***\n");

    if(slli%cc != 2)
        printf("***-25*** N   G ***\n");

    if(sc%ic != 0)
        printf("***-26*** N   G ***\n");

    if(si%sic != 13)
        printf("***-27*** N   G ***\n");

    if(ssi%lic != -2)
        printf("***-28*** N   G ***\n");

    if(sli%llic != 9)
        printf("***-29*** N   G ***\n");

    if(slli%sllic != 12)
        printf("***-30*** N   G ***\n");

    if(sc%usic != 11)
        printf("***-31*** N   G ***\n");

    if(si%20 != 4)
        printf("***-32*** N   G ***\n");

    if(ssi%(signed char)cc != -8)
        printf("***-33*** N   G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
