#include  <stdio.h>

struct tag1 {int i1;int i2[1024];};
struct tag1 func(struct tag1 st1, int i3,
                 struct tag1 st2, struct tag1 st3,
                 struct tag1 st4, int i4, int i5,
                 int i6, int i7);
int main()
{
    int i1;
    struct tag1 s1,s2;

    printf("********** TEST STARTED **********\n") ;

    for (i1 = 0;i1<1024;i1++)
        s1.i2[i1] = 0;

    for (i1 = 0;i1<1024;i1++)
        s1.i2[i1] = i1;
    s1.i1 = 1;

    s2 = func(s1,i1,s1,s1,s1,i1,i1,i1,i1);
    if (s2.i2[1] == 1)
        printf("********** 01 ok **********\n");
    else
        printf("********** 01 ng **********\n");

    printf("********** TEST ENDED **********\n") ;
}
struct tag1 func(struct tag1 st1, int i3,
                  struct tag1 st2, struct tag1 st3,
                  struct tag1 st4, int i4, int i5,
                  int i6, int i7)
{
    return st1;
}
