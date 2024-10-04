#include<stdio.h>
int main()
  {
printf("* \n");
{
  int a=0;
  int b=3;
  a=b%2;
  if(a==1)
    printf("*** \n");
}
{
  int a=0;
  int b=3;
  a=1<<1;
  if(a==2)
    printf("*** \n");
}
{
  int a=0;
  int b=1;
  a=b<<b;
  if(a==2)
    printf("*** \n");
}
{
  int a=0;
  int b=1;
  a=2>>b;
  if(a==1)
    printf("*** \n");
}
{
  int a=0;
  int b=2;
  int c=1;
  a=b>>c;
  if(a==1)
    printf("*** \n");
}
{
  int a=0;
  a=2^1;
  if(a==3)
    printf("*** \n");
}
{
  int a=0;
  int b=2;
  int c=1;
  a=b^c;
  if(a==3)
    printf("*** \n");
}
{
  int a=0;
  a=2|1;
  if(a==3)
    printf("*** \n");
}
{
  int a=0;
  int b=1;
  int c=2;
  a=b|c;
  if(a==3)
    printf("*** \n");
}
{
  int a=0;
  a=1&2;
  if(a==0)
    printf("*** \n");
}
printf("*** \n");
  }
