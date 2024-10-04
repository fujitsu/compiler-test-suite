#include<stdio.h>
int main()
  {
printf("* \n");
{
  int i=3;
  i^=1;
  if(i==2)
    printf("*** \n");
}
{
  int i=3;
  static int arr[]={1,2,3};
  arr[2]^=1;
  if(arr[2]==2)
    printf("*** \n");
}
{
  int i=3;
  (i)^=1;
  if(i==2)
    printf("*** \n");
}
{
  int i=3;
  i|=4;
  if(i==7)
    printf("*** \n");
}
{
  int i=3;
  static int arr[]={1,2,3};
  arr[2]|=4;
  if(arr[2]==7)
    printf("*** \n");
}
{
  int i=3;
  (i)|=4;
  if(i==7)
    printf("*** \n");
}
{
  int i=3;
  i=4;
  if(i==4)
    printf("*** \n");
}
{
  static int arr[]={1,2,3};
  arr[0]=4;
  if(arr[0]==4)
    printf("*** \n");
}
{
  int i=1;
  (i)=3;
  if(i==3)
    printf("*** \n");
}
{
  int i=1;
  !i;
  if(0==!i)
    printf("*** \n");
}
printf("*** \n");
  }
