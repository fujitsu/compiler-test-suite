#include <stdio.h>
int main()
{
    int                    i     = 1;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    float                  flta  = .5;
    double                 dbla  = .25;
    long double            ldbla = .125;
    signed long int        slia  = -6;
    unsigned long long int ullia = 7;
    const short int        *pcsia;
    const short int        rcsia = 8;
    long int               *plia;
    long int               rlia  = 9;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(i+ca != 2)
        printf("***-01*** N   G ***\n");

    if(i+ia != 3)
        printf("***-02*** N   G ***\n");

    if(i+sia != 4)
        printf("***-03*** N   G ***\n");

    if(i+lia != 5)
        printf("***-04*** N   G ***\n");

    if(i+llia != 6)
        printf("***-05*** N   G ***\n");

    if(i+flta != 1.5)
        printf("***-06*** N   G ***\n");

    if(i+dbla != 1.25)
        printf("***-07*** N   G ***\n");

    if(i+ldbla != 1.125)
        printf("***-08*** N   G ***\n");

    if(i+slia != -5)
        printf("***-09*** N   G ***\n");

    if(i+ullia != 8)
        printf("***-10*** N   G ***\n");

    pcsia = &rcsia;
    if(i+*pcsia != 9)
        printf("***-11*** N   G ***\n");

    plia = &rlia;
    if(i+*plia != 10)
        printf("***-12*** N   G ***\n");

    if(i+10 != 11)
        printf("***-13*** N   G ***\n");

    if(i+i/ca != 2)
        printf("***-14*** N   G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
