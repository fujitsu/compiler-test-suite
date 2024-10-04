#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=5;char a=2,b=3;
  i=b+ --a;
  if(i==4)
    printf("*** \n");
}
{
  int i=5;char a=2;
  static int arr[]={1,2,3};
  i=arr[--a];
  if(i==2)
    printf("*** \n");
}
{
  int i=5;char a=1;
  static int arr[]={1,12,3};
  arr[a]--;
  i=arr[a];
  if(i==11&&a==1)
    printf("*** \n");
}
{
  int i=5;char a=2;
  i+=--a;
  if(i==6)
    printf("*** \n");
}
{
  int i=5;char a=2;
  i-=--a;
  if(i==4)
    printf("*** \n");
}
{
  int i=5;char a=3;
  i*=--a;
  if(i==10)
    printf("*** \n");
}
{
  int i=5;char a=3;
  i/=--a;
  if(i==2)
    printf("*** \n");
}
{
  int i=5;char a=3;
  i%=--a;
  if(i==1)
    printf("*** \n");
}
{
  int i=5;char a=3;
  i>>=--a;
  if(i==1)
    printf("*** \n");
}
{
  int i=5;char a=3;
  i<<=--a;
  if(i==20)
    printf("*** \n");
}
printf("*** \n");
  }
