#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=0;char a=1;
  i=--a,(++i);
  if(i==1)
    printf("*** \n");
}
{
  int f();char a=1;
  a=f(1);
  if(a==2)
    printf("*** \n");
}
{
  int f();char a=1,b=1;
  a=f(b);
  if(a==2)
    printf("*** \n");
}
{
  int f();char a=1;
  static int arr[]={1,2,3};
  a=f(arr[0]);
  if(a==2)
    printf("*** \n");
}
{
  int fff();char a=0;
  a=fff();
  if(a==2)
    printf("*** \n");
}
{
  int f();char a=2;
  a=f(a=(a+(-1)));
  if(a==2)
    printf("*** \n");
}
{
  char a=2,i=0;
  i=(a++);
  if(a==3&i==2)
    printf("*** \n");
}
{
  char a=2,i=0;
  i=(a--);
  if(a==1&i==2)
    printf("*** \n");
}
{
  int f();char a=1,b=0;
  b=(a=f(a));
  if(b==2)
    printf("*** \n");
}
{
  char i=0,a=1;
  i=(a++);
  if(i==1)
    printf("*** \n");
}
printf("*** \n");
  }
int fff()
{
  return(2);
  }
int f(a)
int a;
  {
    if(a==1)
    return(2);
    else
    return(0);
  }
