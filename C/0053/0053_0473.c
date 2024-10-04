#include<stdio.h>
int main()
  {
printf("* \n");
{
  int a=0;
  int i=1;
  i=&a - &a;
  if(i==0)
    printf("*** \n");
}
{
  int a[2];
  int *i;
  int b=1;
  int x=0;
  a[1]=200;
  i=b + &a[0];
  x=*i;
  if(x==200)
    printf("*** \n");
}
{
  int a=1;
  int arr[2];
  arr[0]=1;
  arr[1]=2;
  a=arr[0] & arr[1];
  if(a==0)
    printf("*** \n");
}
{
  int *p;
  int a=1;
  p=&a;
  if(*p==1)
    printf("*** \n");
}
{
  int p;
  int a=1;
  p=!&a;
  if(p==0)
    printf("*** \n");
}
{
  int *i;
  int a=0;
  int b=1;
  int arr[2];
  i=a<1?&b:arr;
  if(*i==1)
    printf("*** \n");
}
{
  int *i;
  int a=0;
  int b=1;
  int arr[2];
  i=a<0?arr:&b;
  if(*i==1)
    printf("*** \n");
}
{
  int *i;
  int a=1;
  i=(&a);
  if(*i==1)
    printf("*** \n");
}
{
  int i=0;
  int a=1;
  int b=1;
  i=(i=i+a)&b;
  if(i==1)
    printf("*** \n");
}
{
  int *p;
  int a=1,b=1;
  b=(p=&a,&a==&a);
  if(b==1)
    printf("*** \n");
}
printf("*** \n");
  }
