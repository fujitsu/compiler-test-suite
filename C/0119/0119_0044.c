#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
struct tag1 {int i1;int i2[1024];};
struct tag2   {int i3;int i4;};
struct tag1 funca(struct tag1 st1, int i5);
struct tag2 funcb ( struct tag2      st2, int i6);
int main()
{
    int i1,i2;
    struct tag1 s1,s2;
    struct tag2 s3,s4;

    printf("********** SCOSC01 TEST STARTED **********\n")   ;

    for (i1 = 0;i1<1024;i1++)
        s1.i2[i1] = i1;

    s2 = funca(s1,i1);
    if (s2.i2[1] == 1)
        printf("********** scosc01 - 01 ok **********\n");
    else
        printf("********** scosc01 - 01 ng **********\n");

    s3.i3 = 1;
    s3.i4 = 2;

    s4 = funcb(s3,1);
    if (s4.i3 == 1)
        printf("********** scosc01 - 02 ok **********\n");
    else
        printf("********** scosc01 - 02 ng **********\n");

    printf("********** SCOSC01 TEST ENDED **********\n")   ;
exit (0);
}
struct tag1 funca(struct tag1 st1, int i5)
{
    return st1;
}
struct tag2   funcb( struct tag2      st2, int i6)
{
    return st2;
}
