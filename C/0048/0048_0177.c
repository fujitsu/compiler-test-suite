#include <stdio.h>
int main()
{
    signed char            sc    = 1;
    signed int             si    = 2;
    signed short int       ssi   = 3;
    signed long int        sli   = 4;
    signed long long int   slli  = 5;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    float                  flta  = .5;
    double                 dbla  = .25;
    long double            ldbla = .125;
    signed short int       ssia  = -6;
    unsigned int           uia   = 7;
    volatile long long int *pvllia;
    volatile long long int rvllia = 8;
    char                   *pca;
    char                   rca   = 9;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(sc+ca != 2)
        printf("***-01*** N   G ***\n");

    if(si+ia != 4)
        printf("***-02*** N   G ***\n");

    if(ssi+sia != 6)
        printf("***-03*** N   G ***\n");

    if(sli+lia != 8)
        printf("***-04*** N   G ***\n");

    if(slli+llia != 10)
        printf("***-05*** N   G ***\n");

    if(sc+flta != 1.5)
        printf("***-06*** N   G ***\n");

    if(si+dbla != 2.25)
        printf("***-07*** N   G ***\n");

    if(ssi+ldbla != 3.125)
        printf("***-08*** N   G ***\n");

    if(sli+ssia != -2)
        printf("***-09*** N   G ***\n");

    if(slli+uia != 12)
        printf("***-10*** N   G ***\n");

    pvllia = &rvllia;
    if(sc+*pvllia != 9)
        printf("***-11*** N   G ***\n");

    pca = &rca;
    if(si+*pca != 11)
        printf("***-12*** N   G ***\n");

    if(ssi+10 != 13)
        printf("***-13*** N   G ***\n");

    if(sli+ca+++ia != 7)
        printf("***-14*** N   G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
