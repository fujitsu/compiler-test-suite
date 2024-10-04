#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=5,a=2;
  i=a-- ^ 1;
  if(i==3&a==1)
    printf("*** \n");
}
{
  int i=5,a=0,f();
  i=(f(a) ^ 1);
  if(i==3)
    printf("*** \n");
}
{
  int i=5,a=2;
  i=a++ | 1;
  if(i==3&a==3)
    printf("*** \n");
}
{
  int i=5,a=2;
  i=a-- | 1;
  if(i==3&a==1)
    printf("*** \n");
}
{
  int i=5,a=0,f();
  i=(f(a)|1);
  if(i==3)
    printf("*** \n");
}
{
  int i=5,a=3;
  static int arr[]={7,8,9};
  i=arr[0]*a;
  if(i==21)
    printf("*** \n");
}
{
  static int arr[]={7,8,9};
  int i=5,a=3;
  i=arr[0]-3;
  if(i==4)
    printf("*** \n");
}
{
  int i=5,a=0;
  i=(a+1)-1;
  if(i==0)
    printf("*** \n");
}
{
  int i=5,a=0,f();
  i=(f(a)-1);
  if(i==1)
    printf("*** \n");
}
{
  int i=5,a=0;
  static int arr[]={7,8,9};
  i=arr[0]+a;
  if(i==7)
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
