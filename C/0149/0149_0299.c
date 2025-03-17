#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
printf("*** CATEGORY ** TEST **** STARTED \n");
{
  int i=5,a=2;
  i=a++ % 1;
  if(i==0&a==3)
    printf("*** CATEGORY-01 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-01 *** N G ********** N G ***\n");
}
{
  int i=5,a=2;
  i=a-- % 1;
  if(i==0&a==1)
    printf("*** CATEGORY-02 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-02 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,f();
  i=(f(a) %1);
  if(i==0)
    printf("*** CATEGORY-03 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-03 *** N G ********** N G ***\n");
}
{
  int i=5,a=2;
  i=a++ << 1;
  if(i==4&a==3)
    printf("*** CATEGORY-04 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-04 *** N G ********** N G ***\n");
}
{
  int i=5,a=2;
  i=a-- << 1;
  if(i==4&a==1)
    printf("*** CATEGORY-05 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-05 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,f();
  i=(f(a)<<1);
  if(i==4)
    printf("*** CATEGORY-06 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-06 *** N G ********** N G ***\n");
}
{
  int i=5,a=3;
  i=a++>>1;
  if(i==1&a==4)
    printf("*** CATEGORY-07 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-07 *** N G ********** N G ***\n");
}
{
  int i=5,a=3;
  i=a-->>1;
  if(i==1&a==2)
    printf("*** CATEGORY-08 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-08 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,f();
  i=(f(a)>>1);
  if(i==1)
    printf("*** CATEGORY-09 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-09 *** N G ********** N G ***\n");
}
{
  int i=5,a=0;
  i=a++ ^ 1;
  if(i==1&a==1)
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
