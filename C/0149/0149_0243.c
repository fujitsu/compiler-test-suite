#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int yes=1;
int no=0;
int main()
  {
printf("* CATEGORY *** TEST *** STARTED *\n");
{
  int i;
  struct tag {
               int a;
               char b;
             }st,*p;
  p=&st;
  p->a=1;
  i=p->a;
  if(i)
    printf("*** CATEGORY-01 *** O K ***\n");
  else
    printf("*** CATEGORY-01 ***   N   G   ***\n");
}
{
  int ar[2];
  int i=0;
  ar[i]=1;
  if(ar[i])
    printf("*** CATEGORY-02 *** O K ***\n");
  else
    printf("*** CATEGORY-02 ***   N   G   ***\n");
}
{
  int i=1;
  struct tag {
               int a;
               char b;
             }c;
  c.a=i;
  if(c.a)
    printf("*** CATEGORY-03 *** O K ***\n");
  else
    printf("*** CATEGORY-03 ***   N   G   ***\n");
}
{
  int i=0,iii=1;
  i+=iii;
  if(i)
    printf("*** CATEGORY-04 *** O K ***\n");
  else
    printf("*** CATEGORY-04 ***   N   G   ***\n");
}
{
  int i=2,a=1;
  i-=a;
  if(i)
    printf("*** CATEGORY-05 *** O K ***\n");
  else
    printf("*** CATEGORY-05 ***   N   G   ***\n");
}
printf("*** CATEGORY *** TEST *** ENDED ***\n");
exit (0);
  }
