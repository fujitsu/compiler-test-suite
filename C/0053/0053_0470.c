#include<stdio.h>
int main()
  {
printf("* \n");
{
  int a=0;
  int b=1;
  a=b<=1;
  if(a==1)
    printf("*** \n");
}
{
  int a=0;
  int b=1;
  a=1>0;
  if(a==1)
    printf("*** \n");
}
{
  int a=0;
  int b=1;
  a=b>0;
  if(a==1)
    printf("*** \n");
}
{
  int a=0;
  int b=1;
  a=1>=b;
  if(a==1)
    printf("*** \n");
}
{
  int a=0;
  int b=1;
  a=b>=1;
  if(a==1)
    printf("*** \n");
}
{
  int a=0;
  int b=1;
  a=1==b;
  if(a==1)
    printf("*** \n");
}
{
  int a=0;
  int b=1;
  a=b==1;
  if(a==1)
    printf("*** \n");
}
{
  int a=0;
  int b=1;
  a=1!=2;
  if(a==1)
    printf("*** \n");
}
{
  int a=0;
  int b=1;
  int c=2;
  a=b!=c;
  if(a==1)
    printf("*** \n");
}
{
  int a=0;
  int b=2;
  a=1&&b;
  if(a==1)
    printf("*** \n");
}
{
  int a=0;
  int b=2;
  a=b&&1;
  if(a==1)
    printf("*** \n");
}
{
  int a=0;
  int b=2;
  a=0||b;
  if(a==1)
    printf("*** \n");
}
{
  int a=0;
  int b=0;
  a=b||1;
  if(a==1)
    printf("*** \n");
}
{
  int a=0;
  a=2/1;
  if(a==2)
    printf("*** \n");
}
{
  int a=0;
  int b=2;
  a=b/1;
  if(a==2)
    printf("*** \n");
}
{
  int a=0;
  int b=2;
  a=3%b;
  if(a==1)
    printf("*** \n");
}
printf("*** \n");
  }
