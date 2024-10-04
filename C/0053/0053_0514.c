#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=4;char a=0;
  a=(a+=i),++a;
  if(a==5)
    printf("*** \n");
}
{
  int i=4;char a=1;
  i=a--;
  if(i==1&a==0)
    printf("*** \n");
}
{
  int i=4;char a=1;
  --a;
  if(a==0)
    printf("*** \n");
}
{
  int i=4;char a=1,b=0;
  i=b<--a;
  if(i==0)
    printf("*** \n");
}
{
  int i=4;char a=1,b=0;
  i=b<=--a;
  if(i==1)
    printf("*** \n");
}
{
  int i=4;char a=1,b=0;
  i=b>--a;
  if(i==0)
    printf("*** \n");
}
{
  int i=4;char a=1,b=0;
  i=b>=--a;
  if(i==1)
    printf("*** \n");
}
{
  int i=4;char a=1,b=0;
  i=b==--a;
  if(i==1)
    printf("*** \n");
}
{
  int i=4;char a=1,b=0;
  i=b!=--a;
  if(i==0)
    printf("*** \n");
}
{
  int i=4;char a=1,b=0;
  i=b&&--a;
  if(i==0&a==1)
    printf("*** \n");
}
printf("*** \n");
  }
