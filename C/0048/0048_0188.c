#include <stdio.h>
int main()
{
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
    int                    arr[10] = { 0,1,2,3,4,5,6,7,8,9 };

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(++ca-1-ca != -1)
        printf("***-01*** N   G ***\n");

    if(--ca+1-ia != 0)
        printf("***-02*** N   G ***\n");

    if(-sia-sia != -6)
        printf("***-03*** N   G ***\n");

    if(+lia-lia != 0)
        printf("***-04*** N   G ***\n");

    if(~llia-llia != -11)
        printf("***-05*** N   G ***\n");

    if(!flta-flta != -0.5)
        printf("***-06*** N   G ***\n");

    if((int)dbla-dbla != -0.25)
        printf("***-07*** N   G ***\n");

    if((signed short int)ldbla-ldbla != -.125)
        printf("***-08*** N   G ***\n");

    if(ssia*ssia-ssia != 42)
        printf("***-09*** N   G ***\n");

    if(uia/uia-uia != -6)
        printf("***-10*** N   G ***\n");

    if(arr[2]-10 != -8)
        printf("***-11*** N   G ***\n");

    if(++arr[5]- --arr[3] != 4)
        printf("***-12*** N   G ***\n");

    if(*((arr+10)-1) != 9)
        printf("***-13*** N   G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
