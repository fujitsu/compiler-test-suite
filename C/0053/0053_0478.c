#include<stdio.h>
int main()
  {
printf("* \n");
{
  int i=0;
  int a=1;
  int *p;
  p=&a;
  i=(*p);
  if(i==1)
    printf("*** \n");
}
{
  int i=0;
  int a=1;
  int *p;
  p=&a;
  i=+*p;
  if(i==1)
    printf("*** \n");
}
{
  int i=0;
  int a=1;
  int *p;
  p=&a;
  i=++*p;
  if(i==2)
    printf("*** \n");
}
{
  int i=0;
  int a=1;
  int *p;
  p=&a;
  i=--*p;
  if(i==0)
    printf("*** \n");
}
{
  int i=0;
  int a=1;
  int *p;
  p=&a;
  --*p,*p+=2;
  if(*p==2)
    printf("*** \n");
}
{
  int i=0;
  int a=1;
  int *p;
  p=&a,*p=2;
  if(a==2)
    printf("*** \n");
}
{
  int i=0;
  i=3-1;
  if(i==2)
    printf("*** \n");
}
{
  int i=0,a=3,b=1;
  i=a-b;
  if(i==2)
    printf("*** \n");
}
{
  int i=1;
  -i;
  if(-i==-1)
    printf("*** \n");
}
{
  int i=1,a=3;
  i=0<-a;
  if(i==0)
    printf("*** \n");
}
{
  int i=1,a=3;
  i=0<=-a;
  if(i==0)
    printf("*** \n");
}
printf("*** \n");
  }
