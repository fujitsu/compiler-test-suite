#include<stdio.h>
int main()
  {
printf("* \n");
{
  int a=1;
  int b=1;
  int i=0;
  i=a&b;
  if(i==1)
    printf("*** \n");
}
{
  int a=1;
  int *p;
  &a;
  p=&a;
  if(p==&a)
    printf("*** \n");
}
{
  int i=0;
  int arr[2];
  i=&arr[0] < &arr[1];
  if(i==1)
    printf("*** \n");
}
{
  int arr[2];
  int i=0;
  i=&arr[0] <= &arr[0];
  if(i==1)
    printf("*** \n");
}
{
  int arr[2];
  int i=1;
  i=&arr[0] > &arr[1];
  if(i==0)
    printf("*** \n");
}
{
  int arr[2];
  int i=1;
  i=&arr[0] >= &arr[1];
  if(i==0)
    printf("*** \n");
}
{
  int arr[2];
  int i=0;
  i=&arr[0] == &arr[0];
  if(i==1)
    printf("*** \n");
}
{
  int arr[2];
  int i=1;
  i=&arr[0] != &arr[0];
  if(i==0)
    printf("*** \n");
}
{
  int a=1;
  int i=0;
  i=&a && 1;
  if(i==1)
    printf("*** \n");
}
{
  int a=1;
  int i=0;
  i=&a || &a;
  if(i==1)
    printf("*** \n");
}
printf("*** \n");
  }
