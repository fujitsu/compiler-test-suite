#include<stdio.h>
int main()
  {
printf("* \n");
{
  int i=1;
  static  int arr[]={1,2,3};
  arr[2]-=i;
  if(arr[2]==2)
    printf("*** \n");
}
{
  int i=1;
  (i)-=i;
  if(i==0)
    printf("*** \n");
}
{
  int i=2;
  i*=i;
  if(i==4)
    printf("*** \n");
}
{
  int i=2;
  static int arr[2]={1,2};
  arr[1]*=i;
  if(arr[1]==4)
    printf("*** \n");
}
{
  int i=2;
  (i)*=i;
  if(i==4)
    printf("*** \n");
}
{
  int i=2;
  i/=i;
  if(i==1)
    printf("*** \n");
}
{
  int i=2;
  static int arr[]={1,2,3};
  arr[1]/=i;
  if(arr[1]==1)
    printf("*** \n");
}
{
  int i=2;
  (i)/=i;
  if(i==1)
    printf("*** \n");
}
{
  int i=2;
  i%=i;
  if(i==0)
    printf("*** \n");
}
{
  int i=2;
  static int arr[]={1,2,3};
  arr[1]%=i;
  if(arr[1]==0)
    printf("*** \n");
}
printf("*** \n");
  }
