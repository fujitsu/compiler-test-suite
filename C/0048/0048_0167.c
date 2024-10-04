#include <stdio.h>
int main()
{
    unsigned char          uc    = 32;
    unsigned int           ui    = 64;
    unsigned short int     usi   = 128;
    unsigned long int      uli   = 256;
    unsigned long long int ulli  = 512;

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
    signed long long int   sllic = 20;
    unsigned short int     usic  = 21;


    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(uc*ca != 32)
        printf("***-01*** N   G ***\n");

    if(ui*ia != 128)
        printf("***-02*** N   G ***\n");

    if(usi*sia != 384)
        printf("***-03*** N   G ***\n");

    if(uli*lia != 1024)
        printf("***-04*** N   G ***\n");

    if(ulli*llia != 2560)
        printf("***-05*** N   G ***\n");


    if(uli*slia != -1536)
        printf("***-09*** N   G ***\n");

    if(ulli*uca != 3584)
        printf("***-10*** N   G ***\n");

    if(uc*512 != 16384)
        printf("***-11*** N   G ***\n");

    if(ui*(int)ca != 64)
        printf("***-12*** N   G ***\n");

    if(usi/cb != 16)
        printf("***-13*** N   G ***\n");

    if(uli/ib != 28)
        printf("***-14*** N   G ***\n");

    if(ulli/sib != 51)
        printf("***-15*** N   G ***\n");

    if(uc/lib != 2)
        printf("***-16*** N   G ***\n");

    if(ui/llib != 5)
        printf("***-17*** N   G ***\n");



    if(ui/uib != 4)
        printf("***-22*** N   G ***\n");

    if(usi/13 != 9)
        printf("***-23*** N   G ***\n");

    if(uli/(long long int)cb != 32)
        printf("***-24*** N   G ***\n");

    if(ulli%cc != 2)
        printf("***-25*** N   G ***\n");

    if(uc%ic != 0)
        printf("***-26*** N   G ***\n");

    if(ui%sic != 13)
        printf("***-27*** N   G ***\n");

    if(usi%lic != 2)
        printf("***-28*** N   G ***\n");

    if(uli%llic != 9)
        printf("***-29*** N   G ***\n");

    if(ulli%sllic != 12)
        printf("***-30*** N   G ***\n");

    if(uc%usic != 11)
        printf("***-31*** N   G ***\n");

    if(ui%20 != 4)
        printf("***-32*** N   G ***\n");

    if(usi%(signed char)cc != 8)
        printf("***-33*** N   G ***\n");


    if(uc*flta != 16)
        printf("***-06*** N   G ***\n");

    if(ui*dbla != 16)
        printf("***-07*** N   G ***\n");

    if(usi*ldbla != 16)
        printf("***-08*** N   G ***\n");

    if(usi/fltb != 2048)
        printf("***-18*** N   G ***\n");

    if(uli/dblb != 8192)
        printf("***-19*** N   G ***\n");

    if(ulli/ldblb != 32768)
        printf("***-20*** N   G ***\n");


    printf("*** TEST FOR EXPRESSION *** ENDED\n");

}
