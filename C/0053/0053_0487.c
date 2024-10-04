#include<stdio.h>
int main()
  {
printf("* \n");
{
  struct tag {
               int a;
               int b;
             }st;
  struct tag *p;
  int i=1;
  p=&st;
  p->a=1;
  if(i==p->a)
    printf("*** \n");
}
{
  struct tag {
               int a;
               int b;
             }st;
  struct tag *p;
  int i=1;
  p=&st;
  (p)->a=1;
  if(i==p->a)
    printf("*** \n");
}
{
  int i=1;
  int arr[2];
  arr[0]=1;
  if(i==0[arr])
    printf("*** \n");
}
{
  int i=1;
  int arr[2];
  arr[0]=1;
  if(i==arr[0])
    printf("*** \n");
}
{
  int i=1;
  int arr[2][2];
  arr[0][0]=1;
  if(i==arr[0][0])
    printf("*** \n");
}
{
  int i=1;
  int (arr)[2][2];
  arr[0][0]=1;
  if(i==arr[0][0])
    printf("*** \n");
}
{
  int i=1;
  int arr[2][2];
  arr[0][0]=1;
  if(i==arr[0][0])
    printf("*** \n");
}
{
  int i=1;
  int arr[2][2];
  arr[i][i]=1;
  if(i==arr[i][i])
    printf("*** \n");
}
{
  int i=1;
  static int arr[]={1,2,3};
  if(i==arr[0])
    printf("*** \n");
}
{
  int i=1;
  static int arr[]={1,2,3};
  i=arr[(++i)];
  if(i==3)
    printf("*** \n");
}
printf("*** \n");
  }
