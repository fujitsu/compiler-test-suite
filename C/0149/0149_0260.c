#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
printf("* CATEGORY *** TEST *** STARTED *\n");
{
  int i=0,a=1,b=2;
  i=a<=+b;
  if(i==1)
    printf("*** CATEGORY-01 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-01 *** N G ***\n");
}
{
  int i=0,a=1,b=2;
  i=a>+b;
  if(i==0)
    printf("*** CATEGORY-02 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-02 *** N G ***\n");
}
{
  int i=0,a=1,b=2;
  i=a>=+b;
  if(i==0)
    printf("*** CATEGORY-03 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-03 *** N G ***\n");
}
{
  int i=0,a=1,b=2;
  i=a==+b;
  if(i==0)
    printf("*** CATEGORY-04 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-04 *** N G ***\n");
}
{
  int i=0,a=1,b=2;
  i=a!=+b;
  if(i==1)
    printf("*** CATEGORY-05 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-05 *** N G ***\n");
}
{
  int i=1,a=0,b=2;
  i=a&&+b;
  if(i==0)
    printf("*** CATEGORY-06 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-06 *** N G ***\n");
}
{
  int i=1,a=1,b=2;
  i=a||+b;
  if(i==1)
    printf("*** CATEGORY-07 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-07 *** N G ***\n");
}
{
  int i=1,a=2,b=2;
  i=a/+b;
  if(i==1)
    printf("*** CATEGORY-08 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-08 *** N G ***\n");
}
{
  int i=1,a=2,b=2;
  i=a%+b;
  if(i==0)
    printf("*** CATEGORY-09 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-09 *** N G ***\n");
}
{
  int i=1,a=2,b=2;
  i=a<<+b;
  if(i==8)
    printf("*** CATEGORY-10 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-10 *** N G ***\n");
}
printf("*** CATEGORY *** TEST *** ENDED ***\n");
exit (0);
  }
