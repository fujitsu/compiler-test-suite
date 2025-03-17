#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
printf("*** CATEGORY ** TEST **** STARTED \n");
{
  int i=1,a=2,b=1;
  i=i==b?a:0;
  if(i==2)
    printf("*** CATEGORY-01 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-01 *** N G ***\n");
}
{
  static int arr[]={1,2,3};
  int i=1,b=1;
  i=i==b?arr[1]:0;
  if(i==2)
    printf("*** CATEGORY-02 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-02 *** N G ***\n");
}
{
  int i=2,b=2;
  i=i==b?(b=b+1): 0;
  if(i==3)
    printf("*** CATEGORY-03 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-03 *** N G ***\n");
}
{
  int i=0,b=2;
  i=b==2?b++: 0;
  if(i==2)
    printf("*** CATEGORY-04 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-04 *** N G ***\n");
}
{
  int i=0,b=2;
  i=b==2?b--: 0;
  if(i==2)
    printf("*** CATEGORY-05 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-05 *** N G ***\n");
}
{
  int i=2,b=2,f(),a=0;
  i=i==b?f(a):0;
  if(i==3)
    printf("*** CATEGORY-06 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-06 *** N G ***\n");
}
{
  int i=0,f(),a=0;
  i=f(a);
  if(i==3)
    printf("*** CATEGORY-07 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-07 *** N G ***\n");
}
{
  int i=0,a=0;
  (i=a+1);
  if(i==1)
    printf("*** CATEGORY-08 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-08 *** N G ***\n");
}
{
  int i=1,a=0;
  i=a<(a);
  if(i==0)
    printf("*** CATEGORY-09 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-09 *** N G ***\n");
}
{
  int i=0,a=0;
  i=a<=(a);
  if(i==1)
    printf("*** CATEGORY-10 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-10 *** N G ***\n");
}
printf("*** CATEGORY ** TEST **** ENDED \n");
exit (0);
  }
int f(a)
int a;
  {
    a=3;
    return(a);
  }
