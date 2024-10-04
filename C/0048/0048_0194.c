#include <stdio.h>
int main()
{
    short int              si    = 32767;
    long int               li    = 65535;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned int           uia   = 7;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(si>>ca != 16383)
        printf("***-01*** N   G ***\n");

    if(si>>ia != 8191)
        printf("***-02*** N   G ***\n");

    if(si>>sia != 4095)
        printf("***-03*** N   G ***\n");

    if(si>>lia != 2047)
        printf("***-04*** N   G ***\n");

    if(si>>llia != 1023)
        printf("***-05*** N   G ***\n");

    if(si>>sca != 511)
        printf("***-06*** N   G ***\n");

    if(si>>uia != 255)
        printf("***-07*** N   G ***\n");

    if(si>>8 != 127)
        printf("***-08*** N   G ***\n");

    if(si>>li/si+1 != 4095)
        printf("***-09*** N   G ***\n");

    if(li>>ca != 32767)
        printf("***-10*** N   G ***\n");

    if(li>>ia != 16383)
        printf("***-11*** N   G ***\n");

    if(li>>sia != 8191)
        printf("***-12*** N   G ***\n");

    if(li>>lia != 4095)
        printf("***-13*** N   G ***\n");

    if(li>>llia != 2047)
        printf("***-14*** N   G ***\n");

    if(li>>sca != 1023)
        printf("***-15*** N   G ***\n");

    if(li>>uia != 511)
        printf("***-16*** N   G ***\n");

    if(li>>8 != 255)
        printf("***-17*** N   G ***\n");

    if(li>>sia%ia != 32767)
        printf("***-18*** N   G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
