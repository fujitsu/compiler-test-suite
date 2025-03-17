#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
printf("* CATEGORY *** TEST *** STARTED *\n");
{
  int a=0;
  ++a;
  if(a==1)
    printf("*** CATEGORY-01 *** O K ***\n");
  else
    printf("*** CATEGORY-01 ***   N   G   ***\n");
}
{
  int a=2;
  --a;
  if(a==1)
    printf("*** CATEGORY-02 *** O K ***\n");
  else
    printf("*** CATEGORY-02 ***   N   G   ***\n");
}
{
  int a=2;
  a=0,a=1;
  if(a==1)
    printf("*** CATEGORY-03 *** O K ***\n");
  else
    printf("*** CATEGORY-03 ***   N   G   ***\n");
}
{
  int a=2;
  int b=0;
  b=1<a;
  if(b==1)
    printf("*** CATEGORY-04 *** O K ***\n");
  else
    printf("*** CATEGORY-04 ***   N   G   ***\n");
}
{
  int a=2;
  int b=0;
  b=a<3;
  if(b==1)
    printf("*** CATEGORY-05 *** O K ***\n");
  else
    printf("*** CATEGORY-05 ***   N   G   ***\n");
}
{
  int a=2;
  int b=0;
  b=a<3;
  if(b==1)
    printf("*** CATEGORY-06 *** O K ***\n");
  else
    printf("*** CATEGORY-06 ***   N   G   ***\n");
}
{
  int a=2;
  int b=0;
  b=a++<3;
  if(b==1)
    printf("*** CATEGORY-07 *** O K ***\n");
  else
    printf("*** CATEGORY-07 ***   N   G   ***\n");
}
{
  int a=2;
  int b=1;
  b=a--<2;
  if(b==0)
    printf("*** CATEGORY-08 *** O K ***\n");
  else
    printf("*** CATEGORY-08 ***   N   G   ***\n");
}
{
  int f();
  int a=0;
  int b=100;
  int c=50;
  a=f(b)<c;
  if(a==1)
    printf("*** CATEGORY-09 *** O K ***\n");
  else
    printf("*** CATEGORY-09 ***   N   G   ***\n");
}
{
  int a=0;
  int b=100;
  a=1<=b;
  if(a==1)
    printf("*** CATEGORY-10 *** O K ***\n");
  else
    printf("*** CATEGORY-10 ***   N   G   ***\n");
}
printf("*** CATEGORY *** TEST *** ENDED ***\n");
exit (0);
  }
int f(a)
  int a;
  {
    a=10;
    return(a);
  }
