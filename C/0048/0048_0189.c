#include <stdio.h>
int main()
{
    char                   c     = 1;
    int                    i     = 8;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned int           uia   = 7;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(c<<ca != 2)
        printf("***-01*** N   G ***\n");

    if(c<<ia != 4)
        printf("***-02*** N   G ***\n");

    if(c<<sia != 8)
        printf("***-03*** N   G ***\n");

    if(c<<lia != 16)
        printf("***-04*** N   G ***\n");

    if(c<<llia != 32)
        printf("***-05*** N   G ***\n");

    if(c<<sca != 64)
        printf("***-06*** N   G ***\n");

    if(c<<uia != 128)
        printf("***-07*** N   G ***\n");

    if(c<<8 != 256)
        printf("***-08*** N   G ***\n");

    if(c<<c+1 != 4)
        printf("***-09*** N   G ***\n");

    if(i<<ca != 16)
        printf("***-10*** N   G ***\n");

    if(i<<ia != 32)
        printf("***-11*** N   G ***\n");

    if(i<<sia != 64)
        printf("***-12*** N   G ***\n");

    if(i<<lia != 128)
        printf("***-13*** N   G ***\n");

    if(i<<llia != 256)
        printf("***-14*** N   G ***\n");

    if(i<<sca != 512)
        printf("***-15*** N   G ***\n");

    if(i<<uia != 1024)
        printf("***-16*** N   G ***\n");

    if(i<<28 != -2147483648)
        printf("***-17*** N   G ***\n");

    if(i<<i-1 != 1024)
        printf("***-18*** N   G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
