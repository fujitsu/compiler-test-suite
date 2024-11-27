#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

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

    printf("\n");

    pvlli = &rvlli;
    if(*pvlli+ca != 2)
        printf("***\n");

    if(*pvlli+ia != 3)
        printf("***\n");

    if(*pvlli+sia != 4)
        printf("***\n");

    if(*pvlli+lia != 5)
        printf("***\n");

    if(*pvlli+llia != 6)
        printf("***\n");

    if(*pvlli+ssia != -5)
        printf("***\n");

    if(*pvlli+uia != 8)
        printf("***\n");

    if(*pvlli+10 != 11)
        printf("***\n");

    if(*pvlli+ca+++ia != 4)
        printf("***\n");

    ca--;
    pc=&c;
    *pc=rc;
    if(*pc+ca != 3)
        printf("***\n");

    if(*pc+ia != 4)
        printf("***\n");

    if(*pc+sia != 5)
        printf("***\n");

    if(*pc+lia != 6)
        printf("***\n");

    if(*pc+llia != 7)
        printf("***\n");

    if(*pc+ssia != -4)
        printf("***\n");

    if(*pc+uia != 9)
        printf("***\n");

    if(*pc+10 != 12)
        printf("***\n");

    if(*pc+ca*ia != 4)
        printf("***\n");

    printf("\n");
exit (0);
}
