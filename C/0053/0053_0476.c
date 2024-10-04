#include<stdio.h>
int main()
  {
printf("* \n");
{
  int a=1;
  int i=0;
  int *p;
  p=&a;
  i=2-*p;
  if(i==1)
    printf("*** \n");
}
{
  int a=1;
  int i=0;
  int *p;
  p=&a;
  i=2+*p;
  if(i==3)
    printf("*** \n");
}
{
  int arr[2];
  int a=0;
  int i=0;
  int *p;
  arr[0]=1;
  p=&a;
  if(arr[*p]==1)
    printf("*** \n");
}
{
  int a=0;
  int i=0;
  int *p;
  p=&a;
  i+=*p;
  if(i==0)
    printf("*** \n");
}
{
  int a=1;
  int i=0;
  int *p;
  p=&a;
  i-=*p;
  if(i==(-1))
    printf("*** \n");
}
{
  int a=2;
  int i=2;
  int *p;
  p=&a;
  i*=*p;
  if(i==4)
    printf("*** \n");
}
{
  int a=2;
  int i=2;
  int *p;
  p=&a;
  i/=*p;
  if(i==1)
    printf("*** \n");
}
{
  int a=2;
  int i=3;
  int *p;
  p=&a;
  i%=*p;
  if(i==1)
    printf("*** \n");
}
{
  int a=1;
  int i=2;
  int *p;
  p=&a;
  i>>=*p;
  if(i==1)
    printf("*** \n");
}
{
  int a=1;
  int i=2;
  int *p;
  p=&a;
  i<<=*p;
  if(i==4)
    printf("*** \n");
}
printf("*** \n");
  }
