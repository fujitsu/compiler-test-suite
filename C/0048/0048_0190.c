#include <stdio.h>
int main()
{
    short int              si    = 1;
    long int               li    = 8;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned int           uia   = 7;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(si<<ca != 2)
        printf("***-01*** N   G ***\n");

    if(si<<ia != 4)
        printf("***-02*** N   G ***\n");

    if(si<<sia != 8)
        printf("***-03*** N   G ***\n");

    if(si<<lia != 16)
        printf("***-04*** N   G ***\n");

    if(si<<llia != 32)
        printf("***-05*** N   G ***\n");

    if(si<<sca != 64)
        printf("***-06*** N   G ***\n");

    if(si<<uia != 128)
        printf("***-07*** N   G ***\n");

    if(si<<8 != 256)
        printf("***-08*** N   G ***\n");

    if(si<<si+1 != 4)
        printf("***-09*** N   G ***\n");

    if(li<<ca != 16)
        printf("***-10*** N   G ***\n");

    if(li<<ia != 32)
        printf("***-11*** N   G ***\n");

    if(li<<sia != 64)
        printf("***-12*** N   G ***\n");

    if(li<<lia != 128)
        printf("***-13*** N   G ***\n");

    if(li<<llia != 256)
        printf("***-14*** N   G ***\n");

    if(li<<sca != 512)
        printf("***-15*** N   G ***\n");

    if(li<<uia != 1024)
        printf("***-16*** N   G ***\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(li<<28 != 2147483648)
#else
    if(li<<28 != -2147483648)
#endif
        printf("***-17*** N   G ***\n");

    if(li<<li-1 != 1024)
        printf("***-18*** N   G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
