#include<stdio.h>
int main()
  {
printf("* \n");
{
  int i=0;
  i=2<<!i;
  if(i==4)
    printf("*** \n");
}
{
  int i=0;
  i=2>>!i;
  if(i==1)
    printf("*** \n");
}
{
  int i=0;
  i=2^!i;
  if(i==3)
    printf("*** \n");
}
{
  int i=0;
  i=2|!i;
  if(i==3)
    printf("*** \n");
}
{
  int i=0;
  i=1&!i;
  if(i==1)
    printf("*** \n");
}
{
  int i=0;
  i=2*!i;
  if(i==2)
    printf("*** \n");
}
{
  int i=0;
  i=2-!i;
  if(i==1)
    printf("*** \n");
}
{
  int i=0;
  i=2+!i;
  if(i==3)
    printf("*** \n");
}
{
  int i=0;
  static int arr[]={1,2,3};
  i=arr[!i];
  if(i==2)
    printf("*** \n");
}
{
  int i=0;
  i+=!i;
  if(i==1)
    printf("*** \n");
}
printf("*** \n");
  }
