#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
printf("*** CATEGORY ** TEST **** STARTED \n");
{
  int a=1,b=2,c=3;
  a=b++ & c;
  if(a==2)
    printf("*** CATEGORY-01 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-01 *** N G ********** N G ***\n");
}
{
  int a=1,b=2,c=3;
  a=b-- & c;
  if(a==2)
    printf("*** CATEGORY-02 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-02 *** N G ********** N G ***\n");
}
{
  static int a[2]={1,2};
  int i=0,b=2;
  i=a[1] < b;
  if(i==0)
    printf("*** CATEGORY-03 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-03 *** N G ********** N G ***\n");
}
{
  static int a=1;
  int i=0,b=2;
  i=(a+0) < b;
  if(i==1)
    printf("*** CATEGORY-04 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-04 *** N G ********** N G ***\n");
}
{
  static int a[2]={1,2};
  int i=0,b=2;
  i=a[1] <= b;
  if(i==1)
    printf("*** CATEGORY-05 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-05 *** N G ********** N G ***\n");
}
{
  int p=1,q=2;
  int i=0;
  i=(p+1)<=q;
  if(i==1)
    printf("*** CATEGORY-06 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-06 *** N G ********** N G ***\n");
}
{
  static int a[2]={1,2};
  int i=1,b=2;
  i=a[1] > b;
  if(i==0)
    printf("*** CATEGORY-07 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-07 *** N G ********** N G ***\n");
}
{
  int p=1,q=2;
  int i=1;
  i=(p+1)>q;
  if(i==0)
    printf("*** CATEGORY-08 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-08 *** N G ********** N G ***\n");
}
{
  static int a[2]={1,2};
  int i=0,b=2;
  i=a[1] >= b;
  if(i==1)
    printf("*** CATEGORY-09 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-09 *** N G ********** N G ***\n");
}
{
  int p=1,q=2;
  int i=0;
  i=(p+1)>=q;
  if(i==1)
    printf("*** CATEGORY-10 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-10 *** N G ********** N G ***\n");
}
{
  static int a[2]={1,2};
  int i=0,b=2;
  i=a[1] == b;
  if(i==1)
    printf("*** CATEGORY-11 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-11 *** N G ********** N G ***\n");
}
{
  int p=1,q=2;
  int i=0;
  i=(p+1)==q;
  if(i==1)
    printf("*** CATEGORY-12 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-12 *** N G ********** N G ***\n");
}
{
  static int a[2]={1,2};
  int i=1,b=2;
  i=a[1] != b;
  if(i==0)
    printf("*** CATEGORY-13 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-13 *** N G ********** N G ***\n");
}
{
  int p=1,q=2;
  int i=1;
  i=(p+1)!=q;
  if(i==0)
    printf("*** CATEGORY-14 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-14 *** N G ********** N G ***\n");
}
{
  static int a[2]={1,2};
  int i=0,b=2;
  i=a[1] && b;
  if(i==1)
    printf("*** CATEGORY-15 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-15 *** N G ********** N G ***\n");
}
printf("*** CATEGORY ** TEST **** ENDED \n");
exit (0);
  }
