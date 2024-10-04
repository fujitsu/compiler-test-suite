#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int *arr[2];
  int i=2;
  i=arr<arr;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2;
  struct tag {
               int a;
               int b;
             }st;
  struct tag *arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2;
  int arr[2][2];
  i=arr<arr;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2;
  struct tag {int a;
               int b;
             }st;
  struct tag *arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2;
  static int volatile  arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2;
  struct tag {int a;int b;}st;
  struct tag  volatile    arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2;
  int  const  arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2;
  struct tag {int a;int b;}st;
  struct tag   const  arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2;
  int   volatile const  arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2;
  struct tag {int a;int b;}st;
  struct tag   volatile const  arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2;
  static int arr[2]={1,2};
  i=arr<arr;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2;
  struct tag {int a;int b;}st;
  struct tag arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** \n");
  else
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
