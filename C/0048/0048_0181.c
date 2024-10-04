#include <stdio.h>
int main()
{
    char                   c     = 10;
    int                    i     = 20;

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

    if(c-ca != 9)
        printf("***-01*** N   G ***\n");

    if(c-ia != 8)
        printf("***-02*** N   G ***\n");

    if(c-sia != 7)
        printf("***-03*** N   G ***\n");

    if(c-lia != 6)
        printf("***-04*** N   G ***\n");

    if(c-llia != 5)
        printf("***-05*** N   G ***\n");


    if(c-sca != 16)
        printf("***-09*** N   G ***\n");

    if(c-usia != 3)
        printf("***-10*** N   G ***\n");

    if(c-10 != 0)
        printf("***-11*** N   G ***\n");

    if(c-c*ia != -10)
        printf("***-12*** N   G ***\n");

    if(i-ca != 19)
        printf("***-13*** N   G ***\n");

    if(i-ia != 18)
        printf("***-14*** N   G ***\n");

    if(i-sia != 17)
        printf("***-15*** N   G ***\n");

    if(i-lia != 16)
        printf("***-16*** N   G ***\n");

    if(i-llia != 15)
        printf("***-17*** N   G ***\n");


    if(i-sca != 26)
        printf("***-21*** N   G ***\n");

    if(i-usia != 13)
        printf("***-22*** N   G ***\n");

    if(i-10 != 10)
        printf("***-23*** N   G ***\n");

    if(i-c*ia != 0)
        printf("***-24*** N   G ***\n");


    if(c-flta != 9.5)
        printf("***-06*** N   G ***\n");

    if(c-dbla != 9.75)
        printf("***-07*** N   G ***\n");

    if(c-ldbla != 9.875)
        printf("***-08*** N   G ***\n");

    if(i-flta != 19.5)
        printf("***-18*** N   G ***\n");

    if(i-dbla != 19.75)
        printf("***-19*** N   G ***\n");

    if(i-ldbla != 19.875)
        printf("***-20*** N   G ***\n");


    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
