#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  struct tag {int a;int b;}st;
  struct tag2 {int a;int b;}st2;
int main()
  {
printf("*** CATEGORY ** TEST **** STARTED \n");
{
  int i=2;
  int *f();
  i=f<f;
  if(i==0)
    printf("*** CATEGORY-01 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-01 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct tag *g();
  i=g<g;
  if(i==0)
    printf("*** CATEGORY-02 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-02 *** N G ********** N G ***\n");
}
{
  int i=2;
  int h();
  i=h<h;
  if(i==0)
    printf("*** CATEGORY-03 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-03 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct tag2 j();
  i=j<j;
  if(i==0)
    printf("*** CATEGORY-04 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-04 *** N G ********** N G ***\n");
}
{
  int i=2,a=1;
  int * volatile p;
  int * volatile q;
  p=&a;
  q=&a;
  i=p<q;
  if(i==0)
    printf("*** CATEGORY-05 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-05 *** N G ********** N G ***\n");
}
{
  int i=2,a=1;
  struct tag * volatile p;
  struct tag * volatile q;
  p=&st;
  q=&st;
  i=p<q;
  if(i==0)
    printf("*** CATEGORY-06 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-06 *** N G ********** N G ***\n");
}
{
  int i=2,a=1;
  int * const p=&a;
  int * const q=&a;
  i=p<q;
  if(i==0)
    printf("*** CATEGORY-07 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-07 *** N G ********** N G ***\n");
}
{
  int i=2,a=1;
  struct tag * const p=&st;
  struct tag * const q=&st;
  i=p<q;
  if(i==0)
    printf("*** CATEGORY-08 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-08 *** N G ********** N G ***\n");
}
{
  int i=2;
  int volatile p=1;
  i=p<p;
  if(i==0)
    printf("*** CATEGORY-09 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-09 *** N G ********** N G ***\n");
}
printf("*** CATEGORY ** TEST **** ENDED \n");
exit (0);
  }
int *f()
  {}
struct tag *g()
{
}
int h()
{}
struct tag2 j()
{}
