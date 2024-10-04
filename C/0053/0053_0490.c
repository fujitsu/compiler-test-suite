#include<stdio.h>
int main()
  {
printf("* \n");
{
  int i=2;
  (i)%=i;
  if(i==0)
    printf("*** \n");
}
{
  int i=2;
  i>>=1;
  if(i==1)
    printf("*** \n");
}
{
  int i=2;
  static int arr[]={1,2,4};
  arr[2]>>=i;
  if(arr[2]==1)
    printf("*** \n");
}
{
  int i=2;
  (i)>>=1;
  if(i==1)
    printf("*** \n");
}
{
  int i=2;
  i<<=1;
  if(i==4)
    printf("*** \n");
}
{
  int i=2;
  static int arr[]={1,2,3};
  arr[0]<<=i;
  if(arr[0]==4)
    printf("*** \n");
}
{
  int i=2;
  (i)<<=i;
  if(i==8)
    printf("*** \n");
}
{
  int i=2;
  i&=1;
  if(i==0)
    printf("*** \n");
}
{
  int i=2;
  static int arr[]={1,2,3};
  arr[2]&=i;
  if(arr[2]==2)
    printf("*** \n");
}
{
  int i=2;
  (i)&=1;
  if(i==0)
    printf("*** \n");
}
printf("*** \n");
  }
