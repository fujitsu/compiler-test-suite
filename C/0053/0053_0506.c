#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=0,a=2;
  i=a^(1);
  if(i==3)
    printf("*** \n");
}
{
  int i=0,a=2;
  i=a|(1);
  if(i==3)
    printf("*** \n");
}
{
  int i=0,a=1;
  i=a&(1);
  if(i==1)
    printf("*** \n");
}
{
  int i=0,a=1;
  i=a*(1);
  if(i==1)
    printf("*** \n");
}
{
  int i=1,a=1;
  i=a-(1);
  if(i==0)
    printf("*** \n");
}
{
  int i=1,a=1;
  i=a+(1);
  if(i==2)
    printf("*** \n");
}
{
  static int arr[]={1,2,3};int i=1;
  i=arr[(++i)];
  if(i==3)
    printf("*** \n");
}
{
  int i=0,a=1;
  i+=(a);
  if(i==1)
    printf("*** \n");
}
{
  int i=0,a=1;
  i-=(a);
  if(i==-1)
    printf("*** \n");
}
{
  int i=1,a=2;
  i*=(a);
  if(i==2)
    printf("*** \n");
}
printf("*** \n");
  }
