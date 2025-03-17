#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
  int a[3];
  static int a1[]={1,2,3,4,5};
  struct tt{ int i;
              char c;
              int t;
           }tag1,tag2,*tag3=&tag2;
  static struct tt1{ int i1;
                    char c1;
                    int t1;
                  }tag11={1,2,3},tag12={1,2,3},*tag13=&tag12;
 
printf("* CATEGORY ***       TEST     ****** STARTED *\n");
{
  int  i;
  char c;
  i=1;
  c=100;
  if(i==1 && c==100)
    printf("*** CATEGORY-01 *** O K ***\n");
  else
    printf("*** CATEGORY-01 ***   N   G   ***\n");
exit (0);
}
{
  a[2]=1;
  a1[2]=1;
  if(a[2]==1 && a1[2]==1)
    printf("*** CATEGORY-02 *** O K ***\n");
  else
    printf("*** CATEGORY-02 ***   N   G   ***\n");
}
{
  tag1.t=1;
  tag11.t1=1;
  if(tag1.t==1 && tag11.t1==1)
    printf("*** CATEGORY-03 *** O K ***\n");
  else
    printf("*** CATEGORY-03 ***   N   G   ***\n");
}
{
  tag3->t=1;
  tag13->t1=1;
  if(tag3->t==1 && tag13->t1==1)
    printf("*** CATEGORY-04 *** O K ***\n");
  else
    printf("*** CATEGORY-04 ***   N   G   ***\n");
}
{
  int i,*p=&i;
  *p=1;
  if(*p==1 && i==1)
    printf("*** CATEGORY-05 *** O K ***\n");
  else
    printf("*** CATEGORY-05 ***   N   G   ***\n");
}
printf("* CATEGORY ***       TEST     ****** ENDED ***\n");
}
