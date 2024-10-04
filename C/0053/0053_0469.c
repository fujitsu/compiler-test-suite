#include<stdio.h>
int main()
  {
printf("* \n");
{
  int a=0;
  ++a;
  if(a==1)
    printf("*** \n");
}
{
  int a=2;
  --a;
  if(a==1)
    printf("*** \n");
}
{
  int a=2;
  a=0,a=1;
  if(a==1)
    printf("*** \n");
}
{
  int a=2;
  int b=0;
  b=1<a;
  if(b==1)
    printf("*** \n");
}
{
  int a=2;
  int b=0;
  b=a<3;
  if(b==1)
    printf("*** \n");
}
{
  int a=2;
  int b=0;
  b=a<3;
  if(b==1)
    printf("*** \n");
}
{
  int a=2;
  int b=0;
  b=a++<3;
  if(b==1)
    printf("*** \n");
}
{
  int a=2;
  int b=1;
  b=a--<2;
  if(b==0)
    printf("*** \n");
}
{
  int f();
  int a=0;
  int b=100;
  int c=50;
  a=f(b)<c;
  if(a==1)
    printf("*** \n");
}
{
  int a=0;
  int b=100;
  a=1<=b;
  if(a==1)
    printf("*** \n");
}
printf("*** \n");
  }
int f(a)
  int a;
  {
    a=10;
    return(a);
  }
