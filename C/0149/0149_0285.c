#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
printf("*** CATEGORY ** TEST **** STARTED \n");
{
  int i=0,a=2;
  i=-(a);
  if(i==-2)
    printf("*** CATEGORY-01 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-01 *** N G ***\n");
}
{
  int i=1,a=2;
  i=!(a);
  if(i==0)
    printf("*** CATEGORY-02 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-02 *** N G ***\n");
}
{
  int i=0,a=1;
  i=~(a);
  if(i==-2)
    printf("*** CATEGORY-03 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-03 *** N G ***\n");
}
{
  int i=0;char a=1;
  i=(int)(a);
  if(i==1)
    printf("*** CATEGORY-04 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-04 *** N G ***\n");
}
{
  int i=0;char a=1;
  i=(i==0)?(++a):1;
  if(i==2)
    printf("*** CATEGORY-05 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-05 *** N G ***\n");
}
{
  int i=0;char a=1;
  i=(i!=0)?1:(++a);
  if(i==2)
    printf("*** CATEGORY-06 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-06 *** N G ***\n");
}
{
  int i=0;char a=1;
  i=((a=a+1)+1);
  if(i==3)
    printf("*** CATEGORY-07 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-07 *** N G ***\n");
}
{
  int i=0;char a=1;
  i=+(a=a+1);
  if(i==2)
    printf("*** CATEGORY-08 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-08 *** N G ***\n");
}
{
  int i=0;char a=1;
  i=++(a);
  if(i==2)
    printf("*** CATEGORY-09 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-09 *** N G ***\n");
}
{
  int i=1;char a=1;
  i=--(a);
  if(i==0)
    printf("*** CATEGORY-10 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-10 *** N G ***\n");
}
printf("*** CATEGORY ** TEST **** ENDED \n");
exit (0);
  }
