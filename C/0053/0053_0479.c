#include<stdio.h>
int main()
  {
printf("* \n");
{
  int i=0,a=3;
  i=0>-a;
  if(i==1)
    printf("*** \n");
}
{
  int i=0,a=3;
  i=0>=-a;
  if(i==1)
    printf("*** \n");
}
{
  int i=1,a=3;
  i=0==-a;
  if(i==0)
    printf("*** \n");
}
{
  int i=0,a=3;
  i=0!=-a;
  if(i==1)
    printf("*** \n");
}
{
  int i=0,a=3;
  i=1&&-a;
  if(i==1)
    printf("*** \n");
}
{
  int i=0,a=3;
  i=0||-a;
  if(i==1)
    printf("*** \n");
}
{
  int i=0,a=3;
  i=a/-3;
  if(i==-1)
    printf("*** \n");
}
{
  int i=0,a=5;
  i=a%-3;
  if(i==2)
    printf("*** \n");
}
printf("*** \n");
  }
