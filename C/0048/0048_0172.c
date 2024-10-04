#include <stdio.h>
int main()
{
    short int              si    = 1;

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

    if(si+ca != 2)
        printf("***-01*** N   G ***\n");

    if(si+ia != 3)
        printf("***-02*** N   G ***\n");

    if(si+sia != 4)
        printf("***-03*** N   G ***\n");

    if(si+lia != 5)
        printf("***-04*** N   G ***\n");

    if(si+llia != 6)
        printf("***-05*** N   G ***\n");

    if(si+flta != 1.5)
        printf("***-06*** N   G ***\n");

    if(si+dbla != 1.25)
        printf("***-07*** N   G ***\n");

    if(si+ldbla != 1.125)
        printf("***-08*** N   G ***\n");

    if(si+ssia != -5)
        printf("***-09*** N   G ***\n");

    if(si+uia != 8)
        printf("***-10*** N   G ***\n");

    pvllia = &rvllia;
    if(si+*pvllia != 9)
        printf("***-11*** N   G ***\n");

    pca = &rca;
    if(si+*pca != 10)
        printf("***-12*** N   G ***\n");

    if(si+10 != 11)
        printf("***-13*** N   G ***\n");

    if(si+ca%ia != 2)
        printf("***-14*** N   G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
