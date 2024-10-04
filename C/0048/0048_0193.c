#include <stdio.h>
int main()
{
    unsigned char          c     = 255;
    int                    i     = -2147483648;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned int           uia   = 7;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(c>>ca != 127)
        printf("***-01*** N   G ***\n");

    if(c>>ia != 63)
        printf("***-02*** N   G ***\n");

    if(c>>sia != 31)
        printf("***-03*** N   G ***\n");

    if(c>>lia != 15)
        printf("***-04*** N   G ***\n");

    if(c>>llia != 7)
        printf("***-05*** N   G ***\n");

    if(c>>sca != 3)
        printf("***-06*** N   G ***\n");

    if(c>>uia != 1)
        printf("***-07*** N   G ***\n");

    if(c>>8 != 0)
        printf("***-08*** N   G ***\n");

    if(c>>ca+1 != 63)
        printf("***-09*** N   G ***\n");

    if(i>>ca != -1073741824)
        printf("***-10*** N   G ***\n");

    if(i>>ia != -536870912)
        printf("***-11*** N   G ***\n");

    if(i>>sia != -268435456)
        printf("***-12*** N   G ***\n");

    if(i>>lia != -134217728)
        printf("***-13*** N   G ***\n");

    if(i>>llia != -67108864)
        printf("***-14*** N   G ***\n");

    if(i>>sca != -33554432)
        printf("***-15*** N   G ***\n");

    if(i>>uia != -16777216)
        printf("***-16*** N   G ***\n");

    if(i>>28 != -8)
        printf("***-17*** N   G ***\n");

    if(i>>i/-2000000000 != -1073741824)
        printf("***-18*** N   G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
