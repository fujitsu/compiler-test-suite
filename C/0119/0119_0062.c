#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
struct tag1 {
    char          t1_sch1;
};
struct tag2 {
    char          t2_sch1;
    short int     t2_ssi1;
    long int      t2_sli1;
    long      int t2_sll1;
};
int main()
{
    struct tag1  st1;
    struct tag2  st2;
    char         ans1 = 5, ans2 = 10;
    char         sub1();
    struct tag1  sub2();

    printf("---- scpa005 start ---- \n");

    st1.t1_sch1 = 5;
    if (sub1(st1) == ans1)
        printf ("   1: ***  ok  *** \n");
    else {
        printf ("   1: ???  ng  ??? \n");
        printf ("      ans = %d\n", ans1);
        printf ("      cal = %d\n", sub1(st1));
    }

    st2.t2_sch1 = 1;
    st2.t2_ssi1 = 2;
    st2.t2_sli1 = 3;
    st2.t2_sll1 = 4;
    if (sub2(st2).t1_sch1 == ans2)
        printf ("   2: ***  ok  *** \n");
    else {
        printf ("   2: ???  ng  ??? \n");
        printf ("      ans = %d\n", ans2);
        printf ("      cal = %d\n", sub2(st2).t1_sch1);
    }

    printf("---- scpa005  end  ---- \n");
exit (0);
}

char sub1( st1 )
struct tag1 st1;
{
      return  st1.t1_sch1;
}

struct tag1 sub2( st2 )
struct tag2 st2;
{
      struct tag1 sub3();

      return sub3( st2.t2_sch1+st2.t2_ssi1+st2.t2_sli1+st2.t2_sll1 );
}

struct tag1 sub3( sll1 )
long      int sll1;
{
      struct tag1 st1;

      st1.t1_sch1 = (char)sll1;
      return st1;
}
