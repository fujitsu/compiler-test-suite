#include<stdio.h>
int yes=1;
int no=0;
int main()
  {
printf("*** \n");
{
  int i=1;
  i=!0;
  if(i==1)
    printf("*** \n");
}
{
  int i=0;
  i=~1;
  if(i==(-2))
    printf("*** \n");
}
{
  int i=0,bi=2;
  i=0?1:bi;
  if(i==2)
    printf("*** \n");
}
{
  int i=0,ai=1,bi=2;
  i=ai?bi:1;
  if(i==2)
    printf("*** \n");
}
{
  int i=0;
  i=(1);
  if(i==1)
    printf("*** \n");
}
{
  int i=0;
  i=+1;
  if(i==1)
    printf("*** \n");
}
{
  int f();
  int a=1;
  int b=0;
  b=f(a,1);
  if(b==2)
    printf("*** \n");
}
printf("*** \n");
  }
int f(a,b)
int a,b;
{
  int c=0;
  c=a+b;
  return(c);
}
