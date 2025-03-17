#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int yes=1;
int no=0;
int main()
  {
printf("*** CATEGORY *** TEST *** STARTED *\n");
{
  int i=1;
  i=!0;
  if(i==1)
    printf("*** CATEGORY-01 *** O K ***\n");
  else
    printf("*** CATEGORY-01 ***   N   G   ***\n");
}
{
  int i=0;
  i=~1;
  if(i==(-2))
    printf("*** CATEGORY-02 *** O K ***\n");
  else
    printf("*** CATEGORY-02 ***   N   G   ***\n");
}
{
  int i=0,bi=2;
  i=0?1:bi;
  if(i==2)
    printf("*** CATEGORY-03 *** O K ***\n");
  else
    printf("*** CATEGORY-03 ***   N   G   ***\n");
}
{
  int i=0,ai=1,bi=2;
  i=ai?bi:1;
  if(i==2)
    printf("*** CATEGORY-04 *** O K ***\n");
  else
    printf("*** CATEGORY-04 ***   N   G   ***\n");
}
{
  int i=0;
  i=(1);
  if(i==1)
    printf("*** CATEGORY-05 *** O K ***\n");
  else
    printf("*** CATEGORY-05 ***   N   G   ***\n");
}
{
  int i=0;
  i=+1;
  if(i==1)
    printf("*** CATEGORY-06 *** O K ***\n");
  else
    printf("*** CATEGORY-06 ***   N   G   ***\n");
}
{
  int f();
  int a=1;
  int b=0;
  b=f(a,1);
  if(b==2)
    printf("*** CATEGORY-07 *** O K ***\n");
  else
    printf("*** CATEGORY-07 ***   N   G   ***\n");
}
printf("*** CATEGORY *** TEST *** ENDED ***\n");
exit (0);
  }
int f(a,b)
int a,b;
{
  int c=0;
  c=a+b;
  return(c);
}
