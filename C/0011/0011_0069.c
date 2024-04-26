#include  <stdio.h>

struct tag1 {int i1;int i2[1024];};
struct tag2   {int i3;int i4;};
struct tag1 func1(struct tag1 st1, int i5);
struct tag2 func2 ( struct tag2      st2, int i6);
int main()
{
    int i1,i2;
    struct tag1 s1,s2;
    struct tag2 s3,s4;

    printf("********** TEST STARTED **********\n")   ;

    for (i1 = 0;i1<1024;i1++)
        s1.i2[i1] = i1;

    s2 = func1(s1,i1);
    if (s2.i2[1] == 1)
        printf("********** 01 ok **********\n");
    else
        printf("********** 01 ng **********\n");

    s3.i3 = 1;
    s3.i4 = 2;

    s4 = func2(s3,1);
    if (s4.i3 == 1)
        printf("********** 02 ok **********\n");
    else
        printf("********** 02 ng **********\n");

    printf("********** TEST ENDED **********\n")   ;
}
struct tag1 func1(struct tag1 st1, int i5)
{
    return st1;
}
struct tag2   func2( struct tag2      st2, int i6)
{
    return st2;
}
