#include <stdio.h>
int main()
{
#ifndef nollint
    long long int          lli   = 2147483648;
#endif
    signed short int       ssi   = 32767;
    unsigned long int      uli   = 2147483647;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
#ifndef nollint
    long long int          llia  = 5;
#endif
    signed char            sca   = 6;
    unsigned int           uia   = 7;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");


    if(ssi>>ca != 16383)
        printf("***-10*** N   G ***\n");

    if(ssi>>ia != 8191)
        printf("***-11*** N   G ***\n");

    if(ssi>>sia != 4095)
        printf("***-12*** N   G ***\n");

    if(ssi>>lia != 2047)
        printf("***-13*** N   G ***\n");

#ifndef nollint
    if(ssi>>llia != 1023)
        printf("***-14*** N   G ***\n");
#endif

    if(ssi>>sca != 511)
        printf("***-15*** N   G ***\n");

    if(ssi>>uia != 255)
        printf("***-16*** N   G ***\n");

    if(ssi>>8 != 127)
        printf("***-17*** N   G ***\n");

    if(ssi>>sizeof(ia) != 2047)
        printf("***-18*** N   G ***\n");

    if(uli>>ca != 1073741823)
        printf("***-19*** N   G ***\n");

    if(uli>>ia != 536870911)
        printf("***-20*** N   G ***\n");

    if(uli>>sia != 268435455)
        printf("***-21*** N   G ***\n");

    if(uli>>lia != 134217727)
        printf("***-22*** N   G ***\n");

#ifndef nollint
    if(uli>>llia != 67108863)
        printf("***-23*** N   G ***\n");
#endif

    if(uli>>sca != 33554431)
        printf("***-24*** N   G ***\n");

    if(uli>>uia != 16777215)
        printf("***-25*** N   G ***\n");

    if(uli>>8 != 8388607)
        printf("***-26*** N   G ***\n");

    if(uli>>ca>>ia>>sia != 33554431)
        printf("***-27*** N   G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
