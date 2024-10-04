#include <stdio.h>
int main()
{
    double                 dbl   = 10;
    long double            ldbl  = 20;

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

    if(dbl-ca != 9)
        printf("***-01*** N   G ***\n");

    if(dbl-ia != 8)
        printf("***-02*** N   G ***\n");

    if(dbl-sia != 7)
        printf("***-03*** N   G ***\n");

    if(dbl-lia != 6)
        printf("***-04*** N   G ***\n");

    if(dbl-llia != 5)
        printf("***-05*** N   G ***\n");

    if(dbl-flta != 9.5)
        printf("***-06*** N   G ***\n");

    if(dbl-dbla != 9.75)
        printf("***-07*** N   G ***\n");

    if(dbl-ldbla != 9.875)
        printf("***-08*** N   G ***\n");

    if(dbl-sca != 16)
        printf("***-09*** N   G ***\n");

    if(dbl-usia != 3)
        printf("***-10*** N   G ***\n");

    if(dbl-10 != 0)
        printf("***-11*** N   G ***\n");

    if(dbl-sizeof(dbl)%sia != 8)
        printf("***-12*** N   G ***\n");

    if(ldbl-ca != 19)
        printf("***-13*** N   G ***\n");

    if(ldbl-ia != 18)
        printf("***-14*** N   G ***\n");

    if(ldbl-sia != 17)
        printf("***-15*** N   G ***\n");

    if(ldbl-lia != 16)
        printf("***-16*** N   G ***\n");

    if(ldbl-llia != 15)
        printf("***-17*** N   G ***\n");

    if(ldbl-flta != 19.5)
        printf("***-18*** N   G ***\n");

    if(ldbl-dbla != 19.75)
        printf("***-19*** N   G ***\n");

    if(ldbl-ldbla != 19.875)
        printf("***-20*** N   G ***\n");

    if(ldbl-sca != 26)
        printf("***-21*** N   G ***\n");

    if(ldbl-usia != 13)
        printf("***-22*** N   G ***\n");

    if(ldbl-10 != 10)
        printf("***-23*** N   G ***\n");

#if __NO_LONGDOUBLE
    if(ldbl-sizeof(ldbl)%sia != 18)
#elif __R12 || __i386
    if(ldbl-sizeof(ldbl)%sia != 20)
#else
    if(ldbl-sizeof(ldbl)%sia != 19)
#endif
        printf("***-24*** N   G *** ldbl-sizeof(ldbl)%%sia=%d\n",
	ldbl-sizeof(ldbl)%sia);

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
