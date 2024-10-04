#include <stdio.h>
int main()
{
    float                  flt   = 0.5;
    double                 dbl   = 0.25;
    long double            ldbl  = 0.125;

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

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(flt+ca != 1.5)
        printf("***-01*** N   G ***\n");

    if(flt+ia != 2.5)
        printf("***-02*** N   G ***\n");

    if(flt+sia != 3.5)
        printf("***-03*** N   G ***\n");

    if(flt+lia != 4.5)
        printf("***-04*** N   G ***\n");

    if(flt+llia != 5.5)
        printf("***-05*** N   G ***\n");

    if(flt+flta != 1.0)
        printf("***-06*** N   G ***\n");

    if(flt+dbla != 0.75)
        printf("***-07*** N   G ***\n");

    if(flt+ldbla != 0.625)
        printf("***-08*** N   G ***\n");

    if(flt+ssia != -5.5)
        printf("***-09*** N   G ***\n");

    if(flt+uia != 7.5)
        printf("***-10*** N   G ***\n");

    if(flt+10 != 10.5)
        printf("***-11*** N   G ***\n");

    if(flt+ca--+ia != 3.5)
        printf("***-12*** N   G ***\n");
    ca++;

    if(dbl+ca != 1.25)
        printf("***-13*** N   G ***\n");

    if(dbl+ia != 2.25)
        printf("***-14*** N   G ***\n");

    if(dbl+sia != 3.25)
        printf("***-15*** N   G ***\n");

    if(dbl+lia != 4.25)
        printf("***-16*** N   G ***\n");

    if(dbl+llia != 5.25)
        printf("***-17*** N   G ***\n");

    if(dbl+flta != 0.75)
        printf("***-18*** N   G ***\n");

    if(dbl+dbla != 0.5)
        printf("***-19*** N   G ***\n");

    if(dbl+ldbla != 0.375)
        printf("***-20*** N   G ***\n");

    if(dbl+ssia != -5.75)
        printf("***-21*** N   G ***\n");

    if(dbl+uia != 7.25)
        printf("***-22*** N   G ***\n");

    if(dbl+10 != 10.25)
        printf("***-23*** N   G ***\n");

    if(dbl+ca+!ia != 1.25)
        printf("***-24*** N   G ***\n");

    if(ldbl+ca != 1.125)
        printf("***-25*** N   G ***\n");

    if(ldbl+ia != 2.125)
        printf("***-26*** N   G ***\n");

    if(ldbl+sia != 3.125)
        printf("***-27*** N   G ***\n");

    if(ldbl+lia != 4.125)
        printf("***-28*** N   G ***\n");

    if(ldbl+llia != 5.125)
        printf("***-29*** N   G ***\n");

    if(ldbl+flta != 0.625)
        printf("***-30*** N   G ***\n");

    if(ldbl+dbla != 0.375)
        printf("***-31*** N   G ***\n");

    if(ldbl+ldbla != 0.25)
        printf("***-32*** N   G ***\n");

    if(ldbl+ssia != -5.875)
        printf("***-33*** N   G ***\n");

    if(ldbl+uia != 7.125)
        printf("***-34*** N   G ***\n");

    if(ldbl+10 != 10.125)
        printf("***-35*** N   G ***\n");

    if(ldbl+sizeof(int) != 4.125)
        printf("***-36*** N   G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
