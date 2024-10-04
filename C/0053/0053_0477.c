#include<stdio.h>
int main()
  {
printf("* \n");
{
  int a=1;
  int i=2;
  int *p;
  p=&a;
  i&=*p;
  if(i==0)
    printf("*** \n");
}
{
  int a=1;
  int i=2;
  int *p;
  p=&a;
  i^=*p;
  if(i==3)
    printf("*** \n");
}
{
  int a=1;
  int i=2;
  int *p;
  p=&a;
  i|=*p;
  if(i==3)
    printf("*** \n");
}
{
  int a=1;
  int i=2;
  int *p;
  p=&a;
  i=*p;
  if(i==1)
    printf("*** \n");
}
{
  int i=0;
  int a=1;
  int *p;
  int **pp;
  p=&a;
  pp=&p;
  i=**pp;
  if(i==1)
    printf("*** \n");
}
{
  int i=0;
  int a=1;
  int *p;
  p=&a;
  i=-*p;
  if(i==-1)
    printf("*** \n");
}
{
  int i=1;
  int a=1;
  int *p;
  p=&a;
  i=!*p;
  if(i==0)
    printf("*** \n");
}
{
  int i=0;
  int a=0;
  int *p;
  p=&a;
  i=~*p;
  if(i==(-1))
    printf("*** \n");
}
{
  int i=0;
  int a=1;
  int *p;
  p=&a;
  i=i==0?*p:0;
  if(i==1)
    printf("*** \n");
}
{
  int i=0;
  int a=1;
  int *p;
  p=&a;
  i=i==1?0:*p;
  if(i==1)
    printf("*** \n");
}
printf("*** \n");
  }
