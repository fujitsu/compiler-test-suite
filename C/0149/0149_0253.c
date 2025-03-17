#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
printf("* CATEGORY *** TEST *** STARTED *\n");
{
  int a=1;
  int i=0;
  int *p;
  p=&a;
  i=2-*p;
  if(i==1)
    printf("*** CATEGORY-01 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-01 *** N G ***\n");
}
{
  int a=1;
  int i=0;
  int *p;
  p=&a;
  i=2+*p;
  if(i==3)
    printf("*** CATEGORY-02 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-02 *** N G ***\n");
}
{
  int arr[2];
  int a=0;
  int i=0;
  int *p;
  arr[0]=1;
  p=&a;
  if(arr[*p]==1)
    printf("*** CATEGORY-03 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-03 *** N G ***\n");
}
{
  int a=0;
  int i=0;
  int *p;
  p=&a;
  i+=*p;
  if(i==0)
    printf("*** CATEGORY-04 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-04 *** N G ***\n");
}
{
  int a=1;
  int i=0;
  int *p;
  p=&a;
  i-=*p;
  if(i==(-1))
    printf("*** CATEGORY-05 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-05 *** N G ***\n");
}
{
  int a=2;
  int i=2;
  int *p;
  p=&a;
  i*=*p;
  if(i==4)
    printf("*** CATEGORY-06 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-06 *** N G ***\n");
}
{
  int a=2;
  int i=2;
  int *p;
  p=&a;
  i/=*p;
  if(i==1)
    printf("*** CATEGORY-07 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-07 *** N G ***\n");
}
{
  int a=2;
  int i=3;
  int *p;
  p=&a;
  i%=*p;
  if(i==1)
    printf("*** CATEGORY-08 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-08 *** N G ***\n");
}
{
  int a=1;
  int i=2;
  int *p;
  p=&a;
  i>>=*p;
  if(i==1)
    printf("*** CATEGORY-09 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-09 *** N G ***\n");
}
{
  int a=1;
  int i=2;
  int *p;
  p=&a;
  i<<=*p;
  if(i==4)
    printf("*** CATEGORY-10 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-10 *** N G ***\n");
}
printf("*** CATEGORY *** TEST *** ENDED ***\n");
exit (0);
  }
