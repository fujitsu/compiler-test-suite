#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
printf("* CATEGORY *** TEST *** STARTED *\n");
{
  int *p;
  int a=1;
  int b;
  p=&a;
  b=*p;
  if(b==1)
    printf("*** CATEGORY-01 *** O K ***\n");
  else
    printf("*** CATEGORY-01 ***   N   G   ***\n");
}
{
  int *p;
  int a=1;
  int b;
  p=&a;
  b=*p;
  if(b==1)
    printf("*** CATEGORY-02 *** O K ***\n");
  else
    printf("*** CATEGORY-02 ***   N   G   ***\n");
}
{
  int a=1;
  int b=0;
  b= -a;
  if(b==(-1))
    printf("*** CATEGORY-03 *** O K ***\n");
  else
    printf("*** CATEGORY-03 ***   N   G   ***\n");
}
{
  int a=0;
  int b=0;
  b=!a;
  if(b==1)
    printf("*** CATEGORY-04 *** O K ***\n");
  else
    printf("*** CATEGORY-04 ***   N   G   ***\n");
}
{
  int a=1;
  int b=0;
  b=~a;
  if(b==(-2))
    printf("*** CATEGORY-05 *** O K ***\n");
  else
    printf("*** CATEGORY-05 ***   N   G   ***\n");
}
{
  char a=1;
  int b=0;
  b=(int)a;
  if(b==1)
    printf("*** CATEGORY-06 *** O K ***\n");
  else
    printf("*** CATEGORY-06 ***   N   G   ***\n");
}
{
  int a=2;
  int c=1;
  a=a<3?c:0;
  if(a==1)
    printf("*** CATEGORY-07 *** O K ***\n");
  else
    printf("*** CATEGORY-07 ***   N   G   ***\n");
}
{
  int a=2;
  int c=1;
  a=a>3?0:c;
  if(a==1)
    printf("*** CATEGORY-08 *** O K ***\n");
  else
    printf("*** CATEGORY-08 ***   N   G   ***\n");
}
{
  int a=2;
  int c=1;
  a=(c);
  if(a==1)
    printf("*** CATEGORY-09 *** O K ***\n");
  else
    printf("*** CATEGORY-09 ***   N   G   ***\n");
}
{
  int a=-2;
  int c=1;
  c=+a;
  if(a==-2)
    printf("*** CATEGORY-10 *** O K ***\n");
  else
    printf("*** CATEGORY-10 ***   N   G   ***\n");
}
printf("*** CATEGORY *** TEST *** ENDED ***\n");
exit (0);
  }
