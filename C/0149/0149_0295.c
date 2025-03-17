#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
printf("*** CATEGORY ** TEST **** STARTED \n");
{
  int i=5;char a=2;
  i=i+(a)--;
  if(i==7&a==1)
    printf("*** CATEGORY-01 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-01 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  i=+ --a;
  if(i==1)
    printf("*** CATEGORY-02 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-02 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  i+=a,--i;
  if(i==6)
    printf("*** CATEGORY-03 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-03 *** N G ********** N G ***\n");
}
{
  int i=5;
  i+=2,--i;
  if(i==6)
    printf("*** CATEGORY-04 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-04 *** N G ********** N G ***\n");
}
{
  int i=5;
  i+=i,++i;
  if(i==11)
    printf("*** CATEGORY-05 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-05 *** N G ********** N G ***\n");
}
{
  int i=5,a=0;
  static int arr[]={1,2,3};
  i=arr[0],a=arr[i];
  if(i==1&a==2)
    printf("*** CATEGORY-06 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-06 *** N G ********** N G ***\n");
}
{
  int i=5,a=1;
  static int arr[]={1,2,3};
  i=a*(a+1),arr[i]=1;
  if(i==2&arr[2]==1)
    printf("*** CATEGORY-07 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-07 *** N G ********** N G ***\n");
}
{
  int i=5,a=1;
  static int arr[]={7,8,9};
  a++,arr[a]=1;
  if(a==2&arr[2]==1)
    printf("*** CATEGORY-08 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-08 *** N G ********** N G ***\n");
}
{
  int i=5,a=1;
  static int arr[]={7,8,9};
  a--,arr[a]=1;
  if(a==0&arr[0]==1)
    printf("*** CATEGORY-09 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-09 *** N G ********** N G ***\n");
}
{
  int i=5,a=1,f();
  static int arr[]={7,8,9};
  i=f(a),i=arr[i];
  if(i==9)
    printf("*** CATEGORY-10 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-10 *** N G ********** N G ***\n");
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
