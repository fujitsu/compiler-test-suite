#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
printf("* CATEGORY *** TEST *** STARTED *\n");
{
  int i=1;
  static int arr[]={1,2,3};
  i=arr[i++];
  if(i==2)
    printf("*** CATEGORY-01 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-01 *** N G ***\n");
}
{
  int i=1;
  static int arr[]={1,2,3};
  i=arr[i--];
  if(i==2)
    printf("*** CATEGORY-02 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-02 *** N G ***\n");
}
{
  int i=1;
  static int arr[]={1,2,3};
  int f();
  int b=0;
  i=arr[f(b)];
  if(i==2)
    printf("*** CATEGORY-03 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-03 *** N G ***\n");
}
{
  int i=1;
  struct tag {
               int a;
               int b;
             }st;
  st.a=1;
  if(i==st.a)
    printf("*** CATEGORY-04 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-04 *** N G ***\n");
}
{
  int i=1;
  struct tag {
               int a;
               int b;
             }st[2];
  st[1].a=1;
  if(i==st[1].a)
    printf("*** CATEGORY-05 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-05 *** N G ***\n");
}
{
  int i=1;
  struct tag {
               int a;
               int b;
             }st;
  (st).a=1;
  if(i==(st).a)
    printf("*** CATEGORY-06 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-06 *** N G ***\n");
}
{
  int i=2;
  struct tag {
               int a;
               int b;
             }st;
  st.a=1;
  st.a+=1;
  if(i==st.a)
    printf("*** CATEGORY-07 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-07 *** N G ***\n");
}
{
  int i=2;
  static int arr[]={1,2,3};
  arr[1]+=i;
  if(arr[1]==4)
    printf("*** CATEGORY-08 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-08 *** N G ***\n");
}
{
  int i=2;
  (i)+=i;
  if(i==4)
    printf("*** CATEGORY-09 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-09 *** N G ***\n");
}
{
  int i=10;
  i-=i;
  if(i==0)
    printf("*** CATEGORY-10 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-10 *** N G ***\n");
}
printf("*** CATEGORY *** TEST *** ENDED ***\n");
exit (0);
  }
int f(b)
int b;
  {
    b=1;
    return(b);
  }
