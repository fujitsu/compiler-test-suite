#include <stdio.h>
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


    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(flt*ca != 1024)
        printf("***-01*** N   G ***\n");

    if(flt*ia != 2048)
        printf("***-02*** N   G ***\n");

    if(flt*sia != 3072)
        printf("***-03*** N   G ***\n");

    if(flt*lia != 4096)
        printf("***-04*** N   G ***\n");

    if(flt*llia != 5120)
        printf("***-05*** N   G ***\n");


    if(flt*slia != -6144)
        printf("***-09*** N   G ***\n");

    if(flt*uca != 7168)
        printf("***-10*** N   G ***\n");

    if(flt*1024 != 1048576)
        printf("***-11*** N   G ***\n");

    if(flt*(int)ca != 1024)
        printf("***-12*** N   G ***\n");

    if(flt/cb != 128)
        printf("***-13*** N   G ***\n");

    if((int)flt/ib != 113)
        printf("***-14*** N   G ***\n");

    if((int)flt/sib != 102)
        printf("***-15*** N   G ***\n");

    if((int)flt/lib != 93)
        printf("***-16*** N   G ***\n");

    if((int)flt/llib != 85)
        printf("***-17*** N   G ***\n");


    if((int)flt/scb != -78)
        printf("***-21*** N   G ***\n");

    if((int)flt/uib != 73)
        printf("***-22*** N   G ***\n");

    if((int)flt/13 != 78)
        printf("***-23*** N   G ***\n");

    if((int)flt/(long long int)cb != 128)
        printf("***-24*** N   G ***\n");


    if(flt*flta != 512)
        printf("***-06*** N   G ***\n");

    if(flt*dbla != 256)
        printf("***-07*** N   G ***\n");

    if(flt*ldbla != 128)
        printf("***-08*** N   G ***\n");

    if(flt/fltb != 16384)
        printf("***-18*** N   G ***\n");

    if(flt/dblb != 32768)
        printf("***-19*** N   G ***\n");

    if(flt/ldblb != 65536)
        printf("***-20*** N   G ***\n");


    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
