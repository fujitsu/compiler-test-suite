#include<stdio.h>
  struct tag {int a;int b;}st;
  struct tag2 {int a;int b;}st2;
int main()
  {
printf("*** \n");
{
  int i=2;
  int *f();
  i=f<f;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2;
  struct tag *g();
  i=g<g;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2;
  int h();
  i=h<h;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2;
  struct tag2 j();
  i=j<j;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2,a=1;
  int * volatile p;
  int * volatile q;
  p=&a;
  q=&a;
  i=p<q;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2,a=1;
  struct tag * volatile p;
  struct tag * volatile q;
  p=&st;
  q=&st;
  i=p<q;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2,a=1;
  int * const p=&a;
  int * const q=&a;
  i=p<q;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2,a=1;
  struct tag * const p=&st;
  struct tag * const q=&st;
  i=p<q;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2;
  int volatile p=1;
  i=p<p;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
printf("*** \n");
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
