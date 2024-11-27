#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int   f1();
void  f2();
int     e1;
int main()
{
    int a1 = 0;
    e1=0;

    printf("********** SCORT01 TEST STARTED **********\n") ;

    a1 = f1();
    if (a1 == 1)
        printf("********** return ok **********\n");
    else
        printf("********** return ng **********\n");
    f2();
    f1();

    printf("********** SCORT01 TEST ENDED **********\n")   ;

exit (0);
}
int f1()
{
    e1++;
    return e1;
}
void f2()
{
    e1++;
}
