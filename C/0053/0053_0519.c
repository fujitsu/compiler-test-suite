#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=5;
  i=(i+1)*2;
  if(i==12)
    printf("*** \n");
}
{
  int i=5,f(),a=0;
  i=(f(a)*2);
  if(i==4)
    printf("*** \n");
}
{
  int i=5,a=0;
  i=(a+1)-2;
  if(i==-1)
    printf("*** \n");
}
{
  int i=5,a=0,f();
  i=(f(a)-1);
  if(i==1)
    printf("*** \n");
}
{
  int i=5,a=1;
  static int arr[]={7,8,9};
  i=arr[a]+a;
  if(i==9)
    printf("*** \n");
}
{
  int i=5,a=0,f();
  i=(f(a)+1);
  if(i==3)
    printf("*** \n");
}
{
  int i=5,a=0,f();
  i=a++ <=1;
  if(i==1&a==1)
    printf("*** \n");
}
{
  int i=5,a=0,f();
  i=a-- <=1;
  if(i==1&a==-1)
    printf("*** \n");
}
{
  int i=5,a=0,f();
  i=(f(a)<=1);
  if(i==0)
    printf("*** \n");
}
{
  int i=5,a=0,f();
  i=a++ > 1;
  if(i==0&a==1)
    printf("*** \n");
}
printf("*** \n");
  }
int f(a)
int a;
  {
    a=2;
    return(a);
  }
