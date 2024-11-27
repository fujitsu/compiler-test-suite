#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
 {
    struct t1 {
           int a1[3];
            };
    struct t1 a,b,*p1,*q1;
    int  i1,i2;
    int  s1,s2;

  printf("***  **  TEST FOR COMPOUND ** STARTED ***\n");
      a.a1[0]=1;
      a.a1[1]=2;
      a.a1[2]=3;

      p1=&a;
      i1=0;
      s1=p1->a1[i1];
      i1=1;
      s2=p1->a1[i1];

  if (s2==2)
   printf("***  *** O     K ***\n");
  else
   printf("***  **** N   G ****\n");

      p1=&a;
      b.a1[1]=9;
      i1=1;
      s1=p1->a1[i1];
      p1=&b;
      s2=p1->a1[i1];

  if (s2==9)
   printf("***  *** O     K ***\n");
  else
   printf("***  **** N   G ****\n");

      p1=&a;
      i1=1;
      s1=p1->a1[i1];
      p1->a1[1]=5;
      s2=p1->a1[i1];

  if (s2==5)
   printf("***  *** O     K ***\n");
  else
   printf("***  **** N   G ****\n");

      p1=&a;
      q1=&a;
      i1=1;
      s1=p1->a1[i1];
      q1->a1[1]=7;
      s2=p1->a1[i1];

  if (s2==7)
   printf("***  *** O     K ***\n");
  else
   printf("***  **** N   G ****\n");

      a.a1[0]=1;
      a.a1[1]=2;
      a.a1[2]=3;

      p1=&a;
      i1=0;
      s1=p1->a1[i1];
      if (i1==0)
        i1=1;
      else
        i1=0;
      s2=p1->a1[i1];

  if (s2==2)
   printf("***  *** O     K ***\n");
  else
   printf("***  **** N   G ****\n");

exit (0);
 }
