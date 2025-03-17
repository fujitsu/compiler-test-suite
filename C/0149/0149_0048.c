#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
printf("*** CATEGORY ** TEST **** STARTED \n");
{
  int i=2;
  int volatile const   p=1;
  int volatile const   q=2;
  i=p<q;
  if(i==1)
    printf("*** CATEGORY-01 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-01 *** N G ********** N G ***\n");
}
{
  int i=2;
  int    const   p=1;
  int    const   q=2;
  i=p<q;
  if(i==1)
    printf("*** CATEGORY-02 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-02 *** N G ********** N G ***\n");
}
{
  struct tag {int a;int b;}st;
  int i=0;
  int *    const volatile   p=&(st.a);
  int *    const volatile   q=&(st.b);
  i=p<q;
  if(i==1)
    printf("*** CATEGORY-03 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-03 *** N G ********** N G ***\n");
}
{
  int i=2,a=3;
  struct tag {int a;int b;}st;
  struct tag *    const volatile   p=&st;
  struct tag *    const volatile   q=&st;
  i=p<q;
  if(i==0)
    printf("*** CATEGORY-04 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-04 *** N G ********** N G ***\n");
}
{
  int i=2;
  int    const volatile   p=1;
  int    const volatile   q=2;
  i=p<q;
  if(i==1)
    printf("*** CATEGORY-05 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-05 *** N G ********** N G ***\n");
}
{
  int i=2;
  int    const volatile   p=1;
  int    const volatile   q=2;
  i=p<q;
  if(i==1)
    printf("*** CATEGORY-06 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-06 *** N G ********** N G ***\n");
}
printf("*** CATEGORY ** TEST **** ENDED \n");
exit (0);
  }
