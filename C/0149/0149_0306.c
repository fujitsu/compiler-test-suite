#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
printf("*** CATEGORY ** TEST **** STARTED \n");
{
  int p=1,q=2;
  int i=0;
  i=(p+1)&&q;
  if(i==1)
    printf("*** CATEGORY-1  *****     O    K     *****\n");
  else
    printf("*** CATEGORY-1  *** N G ********** N G ***\n");
}
{
  static int a[2]={1,2};
  int i=0,b=2;
  i=a[1] || b;
  if(i==1)
    printf("*** CATEGORY-2  *****     O    K     *****\n");
  else
    printf("*** CATEGORY-2  *** N G ********** N G ***\n");
}
{
  int p=1,q=2;
  int i=0;
  i=(p+1)||q;
  if(i==1)
    printf("*** CATEGORY-3  *****     O    K     *****\n");
  else
    printf("*** CATEGORY-3  *** N G ********** N G ***\n");
}
{
  static int a[2]={1,2};
  int i=0,b=2;
  i=a[1] / b;
  if(i==1)
    printf("*** CATEGORY-4  *****     O    K     *****\n");
  else
    printf("*** CATEGORY-4  *** N G ********** N G ***\n");
}
{
  int p=1,q=2;
  int i=0;
  i=(p+1)/q;
  if(i==1)
    printf("*** CATEGORY-5  *****     O    K     *****\n");
  else
    printf("*** CATEGORY-5  *** N G ********** N G ***\n");
}
{
  static int a[2]={1,2};
  int i=1,b=2;
  i=a[1] % b;
  if(i==0)
    printf("*** CATEGORY-6  *****     O    K     *****\n");
  else
    printf("*** CATEGORY-6  *** N G ********** N G ***\n");
}
{
  int p=1,q=2;
  int i=1;
  i=(p+1)%q;
  if(i==0)
    printf("*** CATEGORY-7  *****     O    K     *****\n");
  else
    printf("*** CATEGORY-7  *** N G ********** N G ***\n");
}
{
  static int a[2]={1,2};
  int i=1,b=2;
  i=a[1] << b;
  if(i==8)
    printf("*** CATEGORY-8  *****     O    K     *****\n");
  else
    printf("*** CATEGORY-8  *** N G ********** N G ***\n");
}
{
  int p=1,q=2;
  int i=1;
  i=(p+1)<<q;
  if(i==8)
    printf("*** CATEGORY-9  *****     O    K     *****\n");
  else
    printf("*** CATEGORY-9  *** N G ********** N G ***\n");
}
{
  static int a[2]={1,2};
  int i=1,b=2;
  i=a[1] >> b;
  if(i==0)
    printf("*** CATEGORY-10 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-10 *** N G ********** N G ***\n");
}
{
  int p=1,q=2;
  int i=1;
  i=(p+1)>>q;
  if(i==0)
    printf("*** CATEGORY-11 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-11 *** N G ********** N G ***\n");
}
{
  static int a[2]={1,2};
  int i=1,b=2;
  i=a[1] ^ b;
  if(i==0)
    printf("*** CATEGORY-12 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-12 *** N G ********** N G ***\n");
}
{
  int p=1,q=2;
  int i=1;
  i=(p+1)^q;
  if(i==0)
    printf("*** CATEGORY-13 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-13 *** N G ********** N G ***\n");
}
{
  static int a[2]={1,2};
  int i=1,b=2;
  i=a[1] | b;
  if(i==2)
    printf("*** CATEGORY-14 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-14 *** N G ********** N G ***\n");
}
{
  int p=1,q=2;
  int i=1;
  i=(p+1)|q;
  if(i==2)
    printf("*** CATEGORY-15 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-15 *** N G ********** N G ***\n");
}
printf("*** CATEGORY ** TEST **** ENDED \n");
exit (0);
  }
