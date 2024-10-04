#include<stdio.h>
int main()
  {
printf("* \n");
{
  int f();
  int ff();
  int a=0;
  int i=0;
  i=(f(a)&ff(a));
  if(i==1)
    printf("*** \n");
}
{
  int i=0;
  i=2*1;
  if(i==2)
    printf("*** \n");
}
{
  int i=0;
  int a=1,b=2;
  i=a*b;
  if(i==2)
    printf("*** \n");
}
{
  int *p;
  int a=1,b=2;
  p=&a;
  *p+=b;
  if(*p==3)
    printf("*** \n");
}
{
  int *p;
  int a=1,b=2,i=1;
  p=&a;
  i=b<*p;
  if(i==0)
    printf("*** \n");
}
{
  int *p;
  int a=2,b=2,i=0;
  p=&a;
  i=b<=*p;
  if(i==1)
    printf("*** \n");
}
{
  int *p;
  int a=1,b=2,i=0;
  p=&a;
  i=b>*p;
  if(i==1)
    printf("*** \n");
}
{
  int *p;
  int a=1,b=2,i=0;
  p=&a;
  i=b>=*p;
  if(i==1)
    printf("*** \n");
}
{
  int *p;
  int a=1,b=2,i=1;
  p=&a;
  i=b==*p;
  if(i==0)
    printf("*** \n");
}
{
  int *p;
  int a=1,b=2,i=0;
  p=&a;
  i=b!=*p;
  if(i==1)
    printf("*** \n");
}
printf("*** \n");
  }
int f(a)
int a;
{
  a=1;
  return(a);
}
int ff(a)
int a;
  {
    a=1;
    return(a);
  }
