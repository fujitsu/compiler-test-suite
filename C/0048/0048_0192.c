#include <stdio.h>
int main()
{
    int                    i     = -1;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned int           uia   = 7;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(i<<ca != -2)
        printf("***-01*** N   G ***\n");

    if(i<<ia != -4)
        printf("***-02*** N   G ***\n");

    if(i<<sia != -8)
        printf("***-03*** N   G ***\n");

    if(i<<lia != -16)
        printf("***-04*** N   G ***\n");

    if(i<<llia != -32)
        printf("***-05*** N   G ***\n");

    if(i<<sca != -64)
        printf("***-06*** N   G ***\n");

    if(i<<uia != -128)
        printf("***-07*** N   G ***\n");

    if(i<<8 != -256)
        printf("***-08*** N   G ***\n");

    if(i<<i+1 != -1)
        printf("***-09*** N   G ***\n");

    if(1<<ca != 2)
        printf("***-10*** N   G ***\n");

    if(2<<ia != 8)
        printf("***-11*** N   G ***\n");

    if(3<<sia != 24)
        printf("***-12*** N   G ***\n");

    if(4<<lia != 64)
        printf("***-13*** N   G ***\n");

    if(5<<llia != 160)
        printf("***-14*** N   G ***\n");

    if(6<<sca != 384)
        printf("***-15*** N   G ***\n");

    if(7<<uia != 896)
        printf("***-16*** N   G ***\n");

    if(8<<28 != -2147483648)
        printf("***-17*** N   G ***\n");

    if(-8<<8-1 != -1024)
        printf("***-18*** N   G ***\n");

    if(sizeof(int)<<ca != 8)
        printf("***-19*** N   G ***\n");

    if(ca*ia<<ia != 8)
        printf("***-20*** N   G ***\n");

    if(sia%ia<<sia != 8)
        printf("***-21*** N   G ***\n");

    if((int)ca<<lia != 16)
        printf("***-22*** N   G ***\n");

    if(!0<<llia != 32)
        printf("***-23*** N   G ***\n");

    if(~0xfffffffe<<sca != 64)
        printf("***-24*** N   G ***\n");

    if(-7+5<<uia != -256)
        printf("***-25*** N   G ***\n");

    if(!8<<28 != 0)
        printf("***-26*** N   G ***\n");

    if(sizeof(short int)<<1*3/3%4 != 4)
        printf("***-27*** N   G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
