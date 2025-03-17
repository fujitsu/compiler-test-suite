#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
printf("*** CATEGORY ** TEST **** STARTED \n");
{
  int *arr[2];
  int i=2;
  i=arr<arr;
  if(i==0)
    printf("*** CATEGORY-01 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-01 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct tag {
               int a;
               int b;
             }st;
  struct tag *arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** CATEGORY-02 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-02 *** N G ********** N G ***\n");
}
{
  int i=2;
  int arr[2][2];
  i=arr<arr;
  if(i==0)
    printf("*** CATEGORY-03 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-03 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct tag {int a;
               int b;
             }st;
  struct tag *arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** CATEGORY-04 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-04 *** N G ********** N G ***\n");
}
{
  int i=2;
  static int volatile  arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** CATEGORY-05 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-05 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct tag {int a;int b;}st;
  struct tag  volatile    arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** CATEGORY-06 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-06 *** N G ********** N G ***\n");
}
{
  int i=2;
  int  const  arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** CATEGORY-07 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-07 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct tag {int a;int b;}st;
  struct tag   const  arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** CATEGORY-08 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-08 *** N G ********** N G ***\n");
}
{
  int i=2;
  int   volatile const  arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** CATEGORY-09 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-09 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct tag {int a;int b;}st;
  struct tag   volatile const  arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** CATEGORY-10 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-10 *** N G ********** N G ***\n");
}
{
  int i=2;
  static int arr[2]={1,2};
  i=arr<arr;
  if(i==0)
    printf("*** CATEGORY-11 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-11 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct tag {int a;int b;}st;
  struct tag arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** CATEGORY-12 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-12 *** N G ********** N G ***\n");
}
printf("*** CATEGORY ** TEST **** ENDED \n");
exit (0);
  }
int f(a)
int a;
  {
    a=2;
    return(a);
  }
