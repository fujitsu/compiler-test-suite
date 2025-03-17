#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int yes=1;
int no=0;
int main()
  {
printf("* CATEGORY *** TEST *** STARTED *\n");
{
  int i=0,ai=1;
  i=2>>ai;
  if(i==1)
    printf("*** CATEGORY-01 *** O K ***\n");
  else
    printf("*** CATEGORY-01 ***   N   G   ***\n");
}
{
  int i=0,ai=1;
  i=2^ai;
  if(i==3)
    printf("*** CATEGORY-02 *** O K ***\n");
  else
    printf("*** CATEGORY-02 ***   N   G   ***\n");
}
{
  int i=1,ai=1;
  i=2|ai;
  if(i==3)
    printf("*** CATEGORY-03 *** O K ***\n");
  else
    printf("*** CATEGORY-03 ***   N   G   ***\n");
}
{
  int i=1,ai=2;
  i=2&ai;
  if(i==2)
    printf("*** CATEGORY-04 *** O K ***\n");
  else
    printf("*** CATEGORY-04 ***   N   G   ***\n");
}
{
  int i=0,ai=2;
  i=2*ai;
  if(i==4)
    printf("*** CATEGORY-05 *** O K ***\n");
  else
    printf("*** CATEGORY-05 ***   N   G   ***\n");
}
{
  int i=1,ai=2;
  i=3-ai;
  if(i==1)
    printf("*** CATEGORY-06 *** O K ***\n");
  else
    printf("*** CATEGORY-06 ***   N   G   ***\n");
}
{
  int i=1,ai=2;
  i=2+ai;
  if(i==4)
    printf("*** CATEGORY-07 *** O K ***\n");
  else
    printf("*** CATEGORY-07 ***   N   G   ***\n");
}
{
  int i=0;
  struct tag {
               int a;
               char b;
             }*p,st;
  p=&st;
  p->a=1;
  i=p->a;
  if(i==1)
    printf("*** CATEGORY-08 *** O K ***\n");
  else
    printf("*** CATEGORY-08 ***   N   G   ***\n");
}
{
  int ar[2];
  int i=0;
  ar[i]=1;
  if(ar[i]==1)
    printf("*** CATEGORY-09 *** O K ***\n");
  else
    printf("*** CATEGORY-09 ***   N   G   ***\n");
}
{
  int i=1;
  struct tag {
               int a;
               char b;
             }c;
  c.a=i;
  if(c.a==1)
    printf("*** CATEGORY-10 *** O K ***\n");
  else
    printf("*** CATEGORY-10 ***   N   G   ***\n");
}
{
  int i=0,iii=1;
  i+=iii;
  if(i==1)
    printf("*** CATEGORY-11 *** O K ***\n");
  else
    printf("*** CATEGORY-11 ***   N   G   ***\n");
}
{
  int i=2,a=1;
  i-=a;
  if(i==1)
    printf("*** CATEGORY-12 *** O K ***\n");
  else
    printf("*** CATEGORY-12 ***   N   G   ***\n");
}
printf("*** CATEGORY *** TEST *** ENDED ***\n");
exit (0);
  }
