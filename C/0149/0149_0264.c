#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
printf("* CATEGORY *** TEST *** STARTED *\n");
{
  struct tag {
               int a;
               int b;
             }st;
  struct tag *p;
  int i=1;
  p=&st;
  p->a=1;
  if(i==p->a)
    printf("*** CATEGORY-01 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-01 *** N G ***\n");
}
{
  struct tag {
               int a;
               int b;
             }st;
  struct tag *p;
  int i=1;
  p=&st;
  (p)->a=1;
  if(i==p->a)
    printf("*** CATEGORY-02 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-02 *** N G ***\n");
}
{
  int i=1;
  int arr[2];
  arr[0]=1;
  if(i==0[arr])
    printf("*** CATEGORY-03 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-03 *** N G ***\n");
}
{
  int i=1;
  int arr[2];
  arr[0]=1;
  if(i==arr[0])
    printf("*** CATEGORY-04 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-04 *** N G ***\n");
}
{
  int i=1;
  int arr[2][2];
  arr[0][0]=1;
  if(i==arr[0][0])
    printf("*** CATEGORY-05 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-05 *** N G ***\n");
}
{
  int i=1;
  int (arr)[2][2];
  arr[0][0]=1;
  if(i==arr[0][0])
    printf("*** CATEGORY-06 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-06 *** N G ***\n");
}
{
  int i=1;
  int arr[2][2];
  arr[0][0]=1;
  if(i==arr[0][0])
    printf("*** CATEGORY-07 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-07 *** N G ***\n");
}
{
  int i=1;
  int arr[2][2];
  arr[i][i]=1;
  if(i==arr[i][i])
    printf("*** CATEGORY-08 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-08 *** N G ***\n");
}
{
  int i=1;
  static int arr[]={1,2,3};
  if(i==arr[0])
    printf("*** CATEGORY-09 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-09 *** N G ***\n");
}
{
  int i=1;
  static int arr[]={1,2,3};
  i=arr[(++i)];
  if(i==3)
    printf("*** CATEGORY-10 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-10 *** N G ***\n");
}
printf("*** CATEGORY *** TEST *** ENDED ***\n");
exit (0);
  }
