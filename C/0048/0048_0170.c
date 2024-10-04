#include <stdio.h>
int main()
{
    char                   c     = 1;

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
    volatile int           *pvia;
    volatile int           rvia  = 8;
    long long int          *pllia;
    long long int          rllia = 9;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(c+ca != 2)
        printf("***-01*** N   G ***\n");

    if(c+ia != 3)
        printf("***-02*** N   G ***\n");

    if(c+sia != 4)
        printf("***-03*** N   G ***\n");

    if(c+lia != 5)
        printf("***-04*** N   G ***\n");

    if(c+llia != 6)
        printf("***-05*** N   G ***\n");

    if(c+flta != 1.5)
        printf("***-06*** N   G ***\n");

    if(c+dbla != 1.25)
        printf("***-07*** N   G ***\n");

    if(c+ldbla != 1.125)
        printf("***-08*** N   G ***\n");

    if(c+sca != -5)
        printf("***-09*** N   G ***\n");

    if(c+usia != 8)
        printf("***-10*** N   G ***\n");

    pvia = &rvia;
    if(c+*pvia != 9)
        printf("***-11*** N   G ***\n");

    pllia = &rllia;
    if(c+*pllia != 10)
        printf("***-12*** N   G ***\n");

    if(c+10 != 11)
        printf("***-13*** N   G ***\n");

    if(c+c*ia != 3)
        printf("***-14*** N   G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
