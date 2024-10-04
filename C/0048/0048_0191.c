#include <stdio.h>
int main()
{
    long long int          lli   = 1;
    signed short int       ssi   = 8;
    unsigned long int      uli   = 4;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned int           uia   = 7;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(lli<<ca != 2)
        printf("***-01*** N   G ***\n");

    if(lli<<ia != 4)
        printf("***-02*** N   G ***\n");

    if(lli<<sia != 8)
        printf("***-03*** N   G ***\n");

    if(lli<<lia != 16)
        printf("***-04*** N   G ***\n");

    if(lli<<llia != 32)
        printf("***-05*** N   G ***\n");

    if(lli<<sca != 64)
        printf("***-06*** N   G ***\n");

    if(lli<<uia != 128)
        printf("***-07*** N   G ***\n");


    if(lli<<lli<<lli+1 != 8)
        printf("***-09*** N   G ***\n");

    if(ssi<<ca != 16)
        printf("***-10*** N   G ***\n");

    if(ssi<<ia != 32)
        printf("***-11*** N   G ***\n");

    if(ssi<<sia != 64)
        printf("***-12*** N   G ***\n");

    if(ssi<<lia != 128)
        printf("***-13*** N   G ***\n");

    if(ssi<<llia != 256)
        printf("***-14*** N   G ***\n");

    if(ssi<<sca != 512)
        printf("***-15*** N   G ***\n");

    if(ssi<<uia != 1024)
        printf("***-16*** N   G ***\n");

    if(ssi<<28 != -2147483648)
        printf("***-17*** N   G ***\n");

    if(ssi<<ssi<<ssi-1 != 262144)
        printf("***-18*** N   G ***\n");

    if(uli<<ca != 8)
        printf("***-19*** N   G ***\n");

    if(uli<<ia != 16)
        printf("***-20*** N   G ***\n");

    if(uli<<sia != 32)
        printf("***-21*** N   G ***\n");

    if(uli<<lia != 64)
        printf("***-22*** N   G ***\n");

    if(uli<<llia != 128)
        printf("***-23*** N   G ***\n");

    if(uli<<sca != 256)
        printf("***-24*** N   G ***\n");

    if(uli<<uia != 512)
        printf("***-25*** N   G ***\n");

    if(uli<<29 != 2147483648)
        printf("***-26*** N   G ***\n");

    if(uli<<uli>>uli-1 != 8)
        printf("***-27*** N   G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
