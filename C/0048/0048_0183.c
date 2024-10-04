#include <stdio.h>
int main()
{
    long long int          lli   = 10;
    float                  flt   = 20;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    float                  flta  = .5;
    double                 dbla  = .25;
    long double            ldbla = .125;
    signed char            sca   = -6;
    unsigned short int     usia  = 7;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(lli-ca != 9)
        printf("***-01*** N   G ***\n");

    if(lli-ia != 8)
        printf("***-02*** N   G ***\n");

    if(lli-sia != 7)
        printf("***-03*** N   G ***\n");

    if(lli-lia != 6)
        printf("***-04*** N   G ***\n");

    if(lli-llia != 5)
        printf("***-05*** N   G ***\n");


    if(lli-sca != 16)
        printf("***-09*** N   G ***\n");

    if(lli-usia != 3)
        printf("***-10*** N   G ***\n");

    if(lli-10 != 0)
        printf("***-11*** N   G ***\n");

    if(lli-lli%ia != 10)
        printf("***-12*** N   G ***\n");

    if(flt-ca != 19)
        printf("***-13*** N   G ***\n");

    if(flt-ia != 18)
        printf("***-14*** N   G ***\n");

    if(flt-sia != 17)
        printf("***-15*** N   G ***\n");

    if(flt-lia != 16)
        printf("***-16*** N   G ***\n");

    if(flt-llia != 15)
        printf("***-17*** N   G ***\n");


    if(flt-sca != 26)
        printf("***-21*** N   G ***\n");

    if(flt-usia != 13)
        printf("***-22*** N   G ***\n");

    if(flt-10 != 10)
        printf("***-23*** N   G ***\n");


    if(lli-flta != 9.5)
        printf("***-06*** N   G ***\n");

    if(lli-dbla != 9.75)
        printf("***-07*** N   G ***\n");

    if(lli-ldbla != 9.875)
        printf("***-08*** N   G ***\n");

    if(flt-flta != 19.5)
        printf("***-18*** N   G ***\n");

    if(flt-dbla != 19.75)
        printf("***-19*** N   G ***\n");

    if(flt-ldbla != 19.875)
        printf("***-20*** N   G ***\n");


    printf("*** TEST FOR EXPRESSION *** ENDED\n");

}
