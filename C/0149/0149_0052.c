#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
printf("*** CATEGORY ** TEST **** STARTED \n");
{
  int *arr[2];
  int *ayy[2];
  int a=2,**x;
  int b=3,i=1;
  arr[0]=&a;
  ayy[0]=&b;
  x=(i==1)?arr:ayy;
  if(**x==2)
    printf("*** CATEGORY-01 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-01 *** N G ********** N G ***\n");
}
  {
  int i=1;
  struct tag {
               int a;
               int b;
             }st;
  struct tag *arr[2],**x;
  arr[0]=&st;
  st.a=2;
  x=(i==1)?arr:arr;
  if((&(**x))->a==2)
    printf("*** CATEGORY-02 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-02 *** N G ********** N G ***\n");
}
{
  int i=10,(*x)[2];
  static int arr[2][2]={1,2,3,4};
  static int ayy[2][2]={5,6,7,8};
  x=(i==1)?arr:ayy;
  if((int)x[0][0]==5)
    printf("*** CATEGORY-03 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-03 *** N G ********** N G ***\n");
}
{
  int i=1;
  struct tag {int a;
               int b;
             }st,**x;
  struct tag *arr[2];
  arr[0]=&st;
  st.a=2;
  x=(i==1)?arr:arr;
  if((int)x[0]->a==2)
    printf("*** CATEGORY-04 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-04 *** N G ********** N G ***\n");
}
{
  int i=1,*x;
  static int   volatile    arr[2]={4,5};
  static int   volatile    ayy[2]={6,7};
  x=(int *)((i==1)?arr:ayy);
  if(*x==4)
    printf("*** CATEGORY-05 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-05 *** N G ********** N G ***\n");
}
{
  int i=1;
  struct tag {int a;int b;}st;
  struct tag     volatile    arr[2],*x;
  arr[0].a=2;
  x=(i==1)?arr:arr;
  if((&(*x))->a==2)
    printf("*** CATEGORY-06 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-06 *** N G ********** N G ***\n");
}
{
  int i=2,*x;
  static int    const    arr[2]={1,3};
  x=(int *)((i==2)?arr:arr);
  if(*x==1)
    printf("*** CATEGORY-07 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-07 *** N G ********** N G ***\n");
}
{
  int i=1;
  struct tag {int a;int b;}st,*x;
  struct tag              arr[2];
  arr[0].a=2;
  x=(i==1)?arr:arr;
  if((&(*x))->a==2)
    printf("*** CATEGORY-08 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-08 *** N G ********** N G ***\n");
}
{
  int i=2,*x;
  static int     volatile const    arr[2]={1,3};
  x=(int *)((i==2)?arr:arr);
  if(*x==1)
    printf("*** CATEGORY-09 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-09 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct tag {int a;int b;}st,*x;
  struct tag     volatile          arr[2];
  arr[0].a=3;
  x=(struct tag *)((i==2)?arr:arr);
  if((&(*x))->a==3)
    printf("*** CATEGORY-10 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-10 *** N G ********** N G ***\n");
}
{
  int i=2,*x;
  static int arr[2]={1,2};
  static int ayy[2]={3,4};
  x=(i==2)?arr:ayy;
  if(*x==1)
    printf("*** CATEGORY-11 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-11 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct tag {int a;int b;}st,*x;
  struct tag arr[2];
  arr[0].a=3;
  x=(i==2)?arr:arr;
  if((&(*x))->a==3)
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
