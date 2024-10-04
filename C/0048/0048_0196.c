#include <stdio.h>
int main()
{
    int                    i     = -32768;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned int           uia   = 7;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(i>>ca != -16384)
        printf("***-01*** N   G ***\n");

    if(i>>ia != -8192)
        printf("***-02*** N   G ***\n");

    if(i>>sia != -4096)
        printf("***-03*** N   G ***\n");

    if(i>>lia != -2048)
        printf("***-04*** N   G ***\n");

    if(i>>llia != -1024)
        printf("***-05*** N   G ***\n");

    if(i>>sca != -512)
        printf("***-06*** N   G ***\n");

    if(i>>uia != -256)
        printf("***-07*** N   G ***\n");

    if(i>>8 != -128)
        printf("***-08*** N   G ***\n");

    if(i>>sia%ia != -16384)
        printf("***-09*** N   G ***\n");

    if(2>>ca != 1)
        printf("***-10*** N   G ***\n");

    if(4>>ia != 1)
        printf("***-11*** N   G ***\n");

    if(8>>sia != 1)
        printf("***-12*** N   G ***\n");

    if(16>>lia != 1)
        printf("***-13*** N   G ***\n");

    if(32>>llia != 1)
        printf("***-14*** N   G ***\n");

    if(64>>sca != 1)
        printf("***-15*** N   G ***\n");

    if(128>>uia != 1)
        printf("***-16*** N   G ***\n");

    if(256>>8 != 1)
        printf("***-17*** N   G ***\n");

    if(-8>>8-5 != -1)
        printf("***-18*** N   G ***\n");

    if(sizeof(int)>>2 != 1)
        printf("***-19*** N   G ***\n");

    if(ca*ia>>ia != 0)
        printf("***-20*** N   G ***\n");

    if(sia%ia*8>>sia != 1)
        printf("***-21*** N   G ***\n");

    if((int)ca*100/sia>>lia != 2)
        printf("***-22*** N   G ***\n");

    if(!0>>llia%llia != 1)
        printf("***-23*** N   G ***\n");

    if(~0x00000001>>sca != -1)
        printf("***-24*** N   G ***\n");

    if(-1+129>>uia != 1)
        printf("***-25*** N   G ***\n");

    if(!8>>10 != 0)
        printf("***-26*** N   G ***\n");

#if __NO_LONGDOUBLE
    if(sizeof(long double)>>1*6/3%4 != 2)
#elif __R12 || __i386
    if(sizeof(long double)>>1*6/3%4 != 3)
#else
    if(sizeof(long double)>>1*6/3%4 != 4)
#endif
        printf("***-27*** N   G ***\nsizeof(long double)>>1*6/3%%4=%d\n",
	sizeof(long double)>>1*6/3%4);

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
