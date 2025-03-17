#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
printf("* CATEGORY *** TEST *** STARTED *\n");
{
  int a=0;
  int i=1;
  i=&a - &a;
  if(i==0)
    printf("*** CATEGORY-01 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-01 *** N G ***\n");
}
{
  int a[2];
  int *i;
  int b=1;
  int x=0;
  a[1]=200;
  i=b + &a[0];
  x=*i;
  if(x==200)
    printf("*** CATEGORY-02 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-02 *** N G ***\n");
}
{
  int a=1;
  int arr[2];
  arr[0]=1;
  arr[1]=2;
  a=arr[0] & arr[1];
  if(a==0)
    printf("*** CATEGORY-03 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-03 *** N G ***\n");
}
{
  int *p;
  int a=1;
  p=&a;
  if(*p==1)
    printf("*** CATEGORY-04 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-04 *** N G ***\n");
}
{
  int p;
  int a=1;
  p=!&a;
  if(p==0)
    printf("*** CATEGORY-05 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-05 *** N G ***\n");
}
{
  int *i;
  int a=0;
  int b=1;
  int arr[2];
  i=a<1?&b:arr;
  if(*i==1)
    printf("*** CATEGORY-06 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-06 *** N G ***\n");
}
{
  int *i;
  int a=0;
  int b=1;
  int arr[2];
  i=a<0?arr:&b;
  if(*i==1)
    printf("*** CATEGORY-07 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-07 *** N G ***\n");
}
{
  int *i;
  int a=1;
  i=(&a);
  if(*i==1)
    printf("*** CATEGORY-08 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-08 *** N G ***\n");
}
{
  int i=0;
  int a=1;
  int b=1;
  i=(i=i+a)&b;
  if(i==1)
    printf("*** CATEGORY-09 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-09 *** N G ***\n");
}
{
  int *p;
  int a=1,b=1;
  b=(p=&a,&a==&a);
  if(b==1)
    printf("*** CATEGORY-10 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-10 *** N G ***\n");
}
printf("*** CATEGORY *** TEST *** ENDED ***\n");
exit (0);
  }
