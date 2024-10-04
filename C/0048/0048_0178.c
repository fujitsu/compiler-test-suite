#include <stdio.h>
int main()
{
    volatile long long int *pvlli;
    volatile long long int rvlli = 1;
    char                   *pc,c;
    char                   rc=2;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed short int       ssia  = -6;
    unsigned int           uia   = 7;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    pvlli = &rvlli;
    if(*pvlli+ca != 2)
        printf("***-01*** N   G ***\n");

    if(*pvlli+ia != 3)
        printf("***-02*** N   G ***\n");

    if(*pvlli+sia != 4)
        printf("***-03*** N   G ***\n");

    if(*pvlli+lia != 5)
        printf("***-04*** N   G ***\n");

    if(*pvlli+llia != 6)
        printf("***-05*** N   G ***\n");

    if(*pvlli+ssia != -5)
        printf("***-06*** N   G ***\n");

    if(*pvlli+uia != 8)
        printf("***-07*** N   G ***\n");

    if(*pvlli+10 != 11)
        printf("***-08*** N   G ***\n");

    if(*pvlli+ca+++ia != 4)
        printf("***-09*** N   G ***\n");

    ca--;
    pc=&c;
    *pc=rc;
    if(*pc+ca != 3)
        printf("***-10*** N   G ***\n");

    if(*pc+ia != 4)
        printf("***-11*** N   G ***\n");

    if(*pc+sia != 5)
        printf("***-12*** N   G ***\n");

    if(*pc+lia != 6)
        printf("***-13*** N   G ***\n");

    if(*pc+llia != 7)
        printf("***-14*** N   G ***\n");

    if(*pc+ssia != -4)
        printf("***-15*** N   G ***\n");

    if(*pc+uia != 9)
        printf("***-16*** N   G ***\n");

    if(*pc+10 != 12)
        printf("***-17*** N   G ***\n");

    if(*pc+ca*ia != 4)
        printf("***-18*** N   G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
