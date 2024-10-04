#include <stdio.h>
int main()
{
    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
#ifndef nollint
    long long int          llia  = 5;
#endif
    float                  flta  = .5;
    double                 dbla  = .25;
    long double            ldbla = .125;
    signed short int       ssia  = -6;
    unsigned int           uia   = 7;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(1-ca != 0)
        printf("***-01*** N   G ***\n");

    if(-1-ia != -3)
        printf("***-02*** N   G ***\n");

    if(256.f-sia != 253)
        printf("***-03*** N   G ***\n");

    if(.5-lia != -3.5)
        printf("***-04*** N   G ***\n");

#ifndef nollint
    if(10l-llia != 5)
        printf("***-05*** N   G ***\n");
#endif

    if(5ul-flta != 4.5)
        printf("***-06*** N   G ***\n");

    if(1e2-dbla != 99.75)
        printf("***-07*** N   G ***\n");

    if(-10-ldbla != -10.125)
        printf("***-08*** N   G ***\n");

    if(-.5-ssia != 5.5)
        printf("***-09*** N   G ***\n");

    if(2147483647-uia != 2147483640)
        printf("***-10*** N   G ***\n");

    if(0xff-10 != 245)
        printf("***-11*** N   G ***\n");

    if(1.5-ca---ia != -1.5)
        printf("***-12*** N   G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
